import 'package:dio/dio.dart';
import '../../utilities/logging_utils.dart';
import '../datasources/local_storage_data_source.dart';
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
            "--checking token-required: ${options.extra['token-required']}, device-token-required: ${options.extra['device-token-required']}");

        // Handle user authentication token
        if (options.extra['token-required'] == true) {
          final token = await getData('token');
          final deviceToken = await getData('device_token');
          logger.i("deviceToken: $deviceToken");
          logger.i("token: $token");
          options.headers.addAll({
            "Device-Token": deviceToken,
          });
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
