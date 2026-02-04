import 'package:dio/dio.dart';
import '../../utilities/logging_utils.dart';
import '../datasources/local_storage_data_source.dart';
import '../datasources/secure_storage_data_source.dart';
import 'config.dart';

class RestClient {
  late Dio _dio;
  Dio get dio => _dio;

  RestClient() {
    _dio = create();
    logger.i("REST CLIENT INIT]");
  }

  Dio create() {
    Dio dio = Dio();

    dio.options.headers = {
      'accept': 'application/json',
      'Content-Type': 'application/json',
    };

    dio.options.baseUrl = BASE_URL;
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        logger.i(
            "--checking token-required: ${options.extra['token-required']}");

        // Add device registration token to all requests
        final deviceToken = await getSecureData('device_registration_token');
        if (deviceToken != null && deviceToken.isNotEmpty) {
          options.headers.addAll({
            "Device-Token": deviceToken,
          });
          logger.d("Device-Token header added to request");
        } else {
          logger.w("Device registration token not found in secure storage");
        }

        // Handle user authentication token for protected endpoints
        if (options.extra['token-required'] == true) {
          final token = await getData('token');
          logger.i("token: $token");

          if (token != null && token.isNotEmpty) {
            options.headers.addAll({
              "Authorization": "Bearer $token",
            });
            logger.i("User token added to request headers");
          } else {
            logger.w("Token required but not found in storage");
          }
        }

        return handler.next(options);
      },
      onError: (error, handler) async {
        // Handle 401 Unauthorized responses
        if (error.response?.statusCode == 401) {
          logger.w("Received 401 Unauthorized - token may be invalid");
          // Clear stored authentication data
          await removeData('token');
          await removeData('auth_model');
          await removeData('name');
          logger.i("Cleared authentication data due to 401 response");
        }
        return handler.next(error);
      },
    ));

    return dio;
  }
}
