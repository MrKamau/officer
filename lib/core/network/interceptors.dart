import 'dart:async';

import 'package:http_interceptor/http_interceptor.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utilities/logging_utils.dart';

///logging interceptor for printing the calls log to console
class LoggingInterceptor implements InterceptorContract {
  @override
  Future<BaseRequest> interceptRequest({required BaseRequest request}) async {
    logger.i(
        'REQUEST: ${request.method}\nPATH: ${request.url}\nPARAMS: $request\nHEADERS: ${request.headers}\nBODY: $request');

    return request;
  }

  @override
  FutureOr<bool> shouldInterceptRequest() {
    return true;
  }

  @override
  FutureOr<bool> shouldInterceptResponse() {
    return true;
  }

  @override
  FutureOr<BaseResponse> interceptResponse({required BaseResponse response}) {
    logger.i(
        'RESPONSE: ${response.request?.method}\nPATH: ${response.request?.url}\nSTATUS CODE: ${response.statusCode}\nHEADERS: ${response.headers}\nBODY: ${response.request}');
    return response;
  }
}

class HeadersInterceptors implements InterceptorContract {
  @override
  Future<BaseRequest> interceptRequest({required BaseRequest request}) async {
    // Obtain shared preferences.
    final prefs = await SharedPreferences.getInstance();

    // Try reading data from the 'action' key. If it doesn't exist, returns null.
    // final String? action = prefs.getString('action');
    final String? token = prefs.getString("token");
    String authorization = "Token ${token ?? ''}";

    try {
      request.headers["Content-Type"] = "application/json";
      request.headers["Accept"] = "application/json";
      // data.headers["Authorization"] = authorization;
    } catch (e) {
      logger.e(e);
    }
    return request;
  }

  @override
  FutureOr<bool> shouldInterceptRequest() {
    return true;
  }

  @override
  FutureOr<bool> shouldInterceptResponse() {
    // TODO: implement shouldInterceptResponse
    throw UnimplementedError();
  }

  @override
  FutureOr<BaseResponse> interceptResponse({required BaseResponse response}) {
    logger.i(
        'RESPONSE: ${response.request?.method}\nPATH: ${response.request?.url}\nSTATUS CODE: ${response.statusCode}\nHEADERS: ${response.headers}\nBODY: ${response.request}');

    return response;
  }
}
