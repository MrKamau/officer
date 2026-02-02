import 'package:dio/dio.dart';

import '../../utilities/logging_utils.dart';
import 'network_service.dart';
import 'rest_client.dart';

class NetworkServiceImpl implements NetworkService {
  final RestClient _restClient;
  NetworkServiceImpl(this._restClient);

  @override
  Future<Map<String, dynamic>> getHttp(
    String endpoint, {
    Map<String, dynamic>? params,
    bool tokenRequired = false,
    Map<String, dynamic>? headers,
    bool deviceTokenRequired = false,
  }) async {
    try {
      logger.i('called getHttp ');
      final response = await _restClient.dio.get(
        endpoint,
        queryParameters: params,
        options: Options(
          extra: {
            'token-required': tokenRequired,
            'device-token-required': deviceTokenRequired
          },
          headers: headers,
        ),
      );

      // ignore: avoid_print
      logger.w('\n\n ${response.statusCode} \n\n');

      // ignore: avoid_print
      logger.w('\n\n ${response.data} \n\n');

      return _handleApiResponse(response);
    } on DioException catch (e) {
      logger.d("dio crying = > $e");
      logger.e('\n\n ${e.response?.statusCode} \n\n');
      logger.e('\n\n ${e.response?.data} \n\n');
      return _handleApiResponse(e.response!);
    } catch (e) {
      logger.e('\n\n ${e.toString()} \n\n');
      return <String, dynamic>{
        'error': ApiErrors.failure,
        'message': e.toString(),
      };
    }
  }

  @override
  Future<Map<String, dynamic>> postHttp(
    String endpoint, {
    Map<String, dynamic>? params,
    dynamic body,
    Map<String, dynamic>? headers,
    bool tokenRequired = true,
    bool deviceTokenRequired = false,
  }) async {
    try {
      print(body);
      final response = await _restClient.dio.post(
        endpoint,
        queryParameters: params,
        data: body,
        options: Options(
          extra: {
            'token-required': tokenRequired,
            'device-token-required': deviceTokenRequired,
          },
          headers: headers,
        ),
      );

      logger.i('\n\n ${response.statusCode} \n\n');

      logger.i('\n\n ${response.data} -- msee1 \n\n');

      return _handleApiResponse(response);
    } on DioException catch (e) {
      logger.e('\n\n ${e.response?.statusCode} -- msee2 \n\n');
      logger.e('\n\n ${e.response?.data} -- msee3 \n\n');
      if (e.response != null) {
        return _handleApiResponse(e.response!);
      } else {
        return <String, dynamic>{
          'error': ApiErrors.failure,
          'message': e.message ?? 'Network error occurred',
        };
      }
    } catch (e) {
      logger.e('\n\n ${e.toString()} -- msee4 \n\n');
      return <String, dynamic>{
        'error': ApiErrors.failure,
        'message': e.toString(),
      };
    }
  }

  @override
  Future<Map<String, dynamic>> putHttp(
    String endpoint, {
    Map<String, dynamic>? params,
    Map<String, dynamic>? body,
    Map<String, dynamic>? headers,
    bool isPatch = false,
    bool? tokenRequired = true,
    bool deviceTokenRequired = false,
  }) async {
    try {
      final response = isPatch
          ? await _restClient.dio.patch(
              endpoint,
              queryParameters: params,
              data: body,
              options: Options(
                extra: {
                  'token-required': tokenRequired,
                  'device-token-required': deviceTokenRequired,
                },
                headers: headers,
              ),
            )
          : await _restClient.dio.put(
              endpoint,
              queryParameters: params,
              data: body,
              options: Options(
                extra: {
                  'token-required': tokenRequired,
                  'device-token-required': deviceTokenRequired,
                },
                headers: headers,
              ),
            );

      logger.i('\n\n ${response.statusCode} \n\n');

      // ignore: avoid_print
      logger.i('\n\n ${response.data} \n\n');

      return _handleApiResponse(response);
    } on DioException catch (e) {
      logger.e('\n\n ${e.response?.statusCode} \n\n');
      logger.e('\n\n ${e.response?.data} \n\n');
      return _handleApiResponse(e.response!);
    } catch (e) {
      logger.e('\n\n ${e.toString()} \n\n');
      return <String, dynamic>{
        'error': ApiErrors.failure,
        'message': e.toString(),
      };
    }
  }

  @override
  Future<Map<String, dynamic>> deleteHttp(
    String endpoint, {
    Map<String, dynamic>? params,
    Map<String, dynamic>? body,
    Map<String, dynamic>? headers,
    bool tokenRequired = true,
    bool deviceTokenRequired = false,
  }) async {
    try {
      final response = await _restClient.dio.delete(
        endpoint,
        queryParameters: params,
        data: body,
        options: Options(
          extra: {
            'token-required': tokenRequired,
            'device-token-required': deviceTokenRequired,
          },
          headers: headers,
        ),
      );

      return _handleApiResponse(response);
    } on DioException catch (e) {
      logger.e('\n\n ${e.response?.statusCode} \n\n');
      logger.e('\n\n ${e.response?.data} \n\n');
      return _handleApiResponse(e.response!);
    } catch (e) {
      logger.e('\n\n ${e.toString()} \n\n');
      return <String, dynamic>{
        'error': ApiErrors.failure,
        'message': e.toString(),
      };
    }
  }

  Map<String, dynamic> _handleApiResponse(Response response) {
    if (response.statusCode! / 200 >= 1 && response.statusCode! / 200 < 1.5) {
      if (response.data is Map && (response.data as Map).containsKey('data')) {
        return response.data as Map<String, dynamic>;
      }
      if (response.data is List) {
        return {"data": response.data};
      }

      if ((response.data as Map)['success'] == false) {
        return <String, dynamic>{
          'error': ApiErrors.failure,
          'message': (response.data as Map).containsKey('errors')
              ? (response.data as Map)['errors'].toString()
              : (response.data as Map)['message'],
        };
      }

      return <String, dynamic>{'data': response.data};
    }

    // Handle case where response.data might be a String (HTML error page) instead of Map
    String errorMessage = 'An error occurred';
    if (response.data is Map) {
      errorMessage = (response.data as Map)['message']?.toString() ?? 
                     (response.data as Map)['error']?.toString() ?? 
                     'An error occurred';
    } else if (response.data is String) {
      // If it's HTML or plain text error, extract meaningful message
      final htmlString = response.data as String;
      if (htmlString.contains('502 Bad Gateway') || htmlString.contains('Bad Gateway')) {
        errorMessage = 'Server temporarily unavailable. Please try again later.';
      } else if (htmlString.contains('503') || htmlString.contains('Service Unavailable')) {
        errorMessage = 'Service temporarily unavailable. Please try again later.';
      } else if (htmlString.contains('504') || htmlString.contains('Gateway Timeout')) {
        errorMessage = 'Request timeout. Please try again later.';
      } else if (htmlString.contains('Cannot POST') || htmlString.contains('Cannot GET')) {
        errorMessage = 'Endpoint not found. Please check the API endpoint.';
      } else {
        // Extract title from HTML if present, otherwise use first 200 chars
        final titleMatch = RegExp(r'<title>(.*?)</title>', caseSensitive: false).firstMatch(htmlString);
        if (titleMatch != null) {
          errorMessage = titleMatch.group(1) ?? 'Server error occurred';
        } else {
          errorMessage = htmlString.length > 200 
              ? htmlString.substring(0, 200) 
              : htmlString;
        }
      }
    }

    final errorResult = <String, dynamic>{
      'message': errorMessage,
      'data': response.data,
    };

    switch (response.statusCode) {
      case 400:
        errorResult['error'] = ApiErrors.badRequest;
        break;
      case 401:
        errorResult['error'] = ApiErrors.unauthenticated;
        break;
      case 403:
        errorResult['error'] = ApiErrors.notPermitted;
        break;
      case 404:
        errorResult['error'] = ApiErrors.notFound;
        break;
      case 422:
        errorResult['error'] = ApiErrors.validationFailed;
        break;
      case 500:
        errorResult['error'] = ApiErrors.serverError;
        break;
      case 502:
      case 503:
      case 504:
        errorResult['error'] = ApiErrors.serverError;
        errorResult['message'] = 'Server temporarily unavailable. Please try again later.';
        break;
      default:
        errorResult['error'] = ApiErrors.unknown;
    }

    assert(errorResult['error'] != null);
    assert(errorResult['error'] is ApiErrors);

    assert(errorResult['message'] != null);
    assert(errorResult['message'] is String);

    return errorResult;
  }
}

enum ApiErrors {
  serverError,
  badRequest,
  notFound,
  validationFailed,
  unauthenticated,
  notPermitted,
  unknown,
  noInternet,
  failure,
}
