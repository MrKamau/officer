import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../domain/usecase/failures.dart';
import '../error_helpers.dart';
import '../logging_utils.dart';

/// Make an API call that internally handles exceptions. Throws a [NetworkFailure].
///
/// This is intended to always be used for ALL remoteDatasurce calls in the repository layer.
/// This means there'll be no need for API-related try-catch blocks in the repository layer.
///
/// The named [*Msg] params may be used to customise the error message depending
/// on the error type. For example, `notFoundMsg` can be set to "User not found",
/// which is descriptive enough to be sent to the Presentation layer for use in
/// a [UIError].
/// Also, you can set `anyMsg` to force all error messages no matter the type to
/// one custom message.
Future<T> guardedApiCall<T>(
  Function run, {
  String? anyMsg,
  String? serverErrorMsg,
  String? badRequestMsg,
  String Function(ApiFailure)? getBadRequestMsg,
  String? notFoundMsg,
  String Function(ApiFailure)? getNotFoundMsg,
  String? unauthenticatedMsg,
  String Function(ApiFailure)? getUnauthenticatedMsg,
  String? notPermittedMsg,
  String Function(ApiFailure)? getNotPermittedMsg,
  String? validationFailedMsg,
  String Function(ApiFailure)? getValidationFailedMsg,
  String? unknownMsg,
  String Function(ApiFailure)? getfailureMsg,
}) async {
  try {
    final val = await run() as T;
    print("val: $val");
    return val;
  } on ApiFailure catch (e, s) {
    print("e: $e");
    print("s: $s");
    throw getNetworkFailureFromApiFailure(
      e,
      s,
      anyMsg: e.message,
      serverErrorMsg: e.message,
      badRequestMsg: e.message,
      notFoundMsg: e.message,
      unauthenticatedMsg: e.message,
      notPermittedMsg: e.message,
      validationFailedMsg: e.message,
      unknownMsg: e.message,
      failureMsg: e.message,
    );
  } on DioException catch (e) {
    if (kDebugMode) logger.e('DioException at API: $e ${e.toString()}');
    logger.e("DioException: $e");
    logger.e("e.response?.data: ${e.response?.data}");
    logger.e("e.response?.statusCode: ${e.response?.statusCode}");

    // Extract error message from response data, prioritizing actual error messages
    String? errorMessage;
    if (e.response?.data != null) {
      final responseData = e.response!.data;
      if (responseData is Map) {
        // Try multiple possible error message fields
        errorMessage = responseData['error']?.toString() ??
            responseData['message']?.toString() ??
            responseData['errors']?.toString();

        // If errors is a Map or List, extract the first meaningful message
        if (errorMessage == null && responseData['errors'] != null) {
          final errors = responseData['errors'];
          if (errors is Map && errors.isNotEmpty) {
            errorMessage = errors.values.first?.toString();
          } else if (errors is List && errors.isNotEmpty) {
            errorMessage = errors.first?.toString();
          }
        }
      } else if (responseData is String) {
        errorMessage = responseData;
      }
    }

    // Fallback to status code based message if no error message found
    if (errorMessage == null || errorMessage.isEmpty) {
      final statusCode = e.response?.statusCode;
      if (statusCode == 400) {
        errorMessage = 'Bad request - Please check your input';
      } else if (statusCode == 401) {
        errorMessage = 'Unauthorized - Please login again';
      } else if (statusCode == 403) {
        errorMessage = 'Forbidden - You do not have permission';
      } else if (statusCode == 404) {
        errorMessage = 'Data not found';
      } else if (statusCode == 500) {
        errorMessage = 'Server error - Please try again later';
      } else {
        errorMessage = 'Network error occurred';
      }
    }

    throw NetworkFailure(errorMessage);
  } catch (e) {
    if (kDebugMode) logger.e('Internal exception at API: $e ${e.toString()}');
    logger.e("e: $e");
    throw NetworkFailure('An unexpected error occurred');
  }
}
