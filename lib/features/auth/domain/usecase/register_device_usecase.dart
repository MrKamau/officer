import 'package:officer/core/domain/usecase/failures.dart';
import 'package:officer/core/domain/usecase/usecase_typedefs.dart';
import 'package:officer/core/utilities/error_helpers.dart';
import 'package:officer/features/auth/domain/models/device_registration_model/device_registration_model.dart';
import 'package:dartz/dartz.dart';

import '../repository/repo.dart';

class RegisterDeviceUseCase
    implements Usecase<DeviceRegistrationModel, Map<String, dynamic>> {
  final AuthRepository _repository;

  RegisterDeviceUseCase(this._repository);

  @override
  Future<Either<DeviceRegistrationModel, UIError>> call(
      Map<String, dynamic> payload) async {
    try {
      final response = await _repository.registerDevice(payload);
      return left(response);
    } on NetworkFailure catch (e, s) {
      return right(getUIErrorFromUsecaseFailure(e.message, e, s));
    }
  }
}
