import 'package:officer/core/domain/usecase/failures.dart';
import 'package:officer/core/domain/usecase/usecase_typedefs.dart';
import 'package:officer/core/utilities/error_helpers.dart';
import 'package:officer/core/utilities/logging_utils.dart';
import 'package:officer/core/utilities/device_info_service.dart';
import 'package:dartz/dartz.dart';

import '../repository/repo.dart';

class RegisterDeviceUseCase implements Usecase<String?, NoParams> {
  final AuthRepository _repository;

  RegisterDeviceUseCase(this._repository);

  @override
  Future<Either<String?, UIError>> call(NoParams params) async {
    try {
      logger.i('========================================');
      logger.i('[RegisterDeviceUseCase] Starting device registration process');
      logger.i('========================================');

      // Collect device information using DeviceInfoService
      final payload = await DeviceInfoService.collectDeviceRegistrationInfo();

      logger.i('[RegisterDeviceUseCase] Device Registration Payload:');
      logger.i('[RegisterDeviceUseCase] {');
      payload.forEach((key, value) {
        final displayValue = key == 'fcm_token' && value is String && value.isNotEmpty
            ? '${value.substring(0, value.length > 20 ? 20 : value.length)}...'
            : value;
        logger.i('[RegisterDeviceUseCase]   "$key": "$displayValue"');
      });
      logger.i('[RegisterDeviceUseCase] }');
      logger.i('========================================');

      // Register device with the backend
      final response = await _repository.registerDevice(payload);

      logger.i('[RegisterDeviceUseCase] ✅ Device registered successfully');

      // Extract token from response
      final deviceToken = response.token;
      if (deviceToken != null && deviceToken.isNotEmpty) {
        logger.i('[RegisterDeviceUseCase] ✅ Device token extracted: ${deviceToken.substring(0, deviceToken.length > 20 ? 20 : deviceToken.length)}...');
      } else {
        logger.w('[RegisterDeviceUseCase] ⚠️ No device token in response');
      }

      logger.i('========================================');

      return left(deviceToken);
    } on NetworkFailure catch (e, s) {
      logger.e('[RegisterDeviceUseCase] ❌ Network failure: ${e.message}');
      return right(getUIErrorFromUsecaseFailure(e.message, e, s));
    } catch (e, stackTrace) {
      logger.e('[RegisterDeviceUseCase] ❌ Unexpected error: $e');
      return right(getUIErrorFromUsecaseFailure(
        'Failed to register device. The app will continue to function.',
        e,
        stackTrace,
      ));
    }
  }
}
