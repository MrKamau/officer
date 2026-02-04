import 'dart:convert';
import 'dart:math';

import 'package:officer/core/data/network_datasource/network_service.dart';
import 'package:officer/core/data/network_datasource/network_service_impl.dart';
import 'package:officer/core/utilities/error_helpers.dart';
import 'package:officer/core/utilities/logging_utils.dart';
import 'package:officer/features/auth/data/data_source/data.dart';
import 'package:officer/features/auth/domain/models/auth_model/auth_model.dart';
import 'package:officer/features/auth/domain/models/auth_model/today_attendance.dart';
import 'package:officer/features/auth/domain/models/attendance_model/attendance_response.dart';

import 'endpoints.dart';

class AuthDataSourceImpl implements AuthDataSource {
  final NetworkService _networkService;

  AuthDataSourceImpl(this._networkService);

  @override
  Future<AuthModel> login(Map<String, dynamic> payload) async {
    var response = await _networkService.postHttp(AuthEndpoints.login,
        body: jsonEncode(payload),
        tokenRequired: false);

    if (response['error'] != null) {
      await handleApiFailure(
        source: 'login',
        errorMessage: response['message'] as String,
        errorCode: response['error'] as ApiErrors,
        isOnlineStatus: true,
      );
    }

    logger.w(response);

    return AuthModel.fromJson(response['data']);
  }

  @override
  Future<TodayAttendance> checkIn() async {
    var response = await _networkService.postHttp(
      AuthEndpoints.attendanceCheckIn,
      body: jsonEncode({}),
      tokenRequired: true,
    );

    if (response['error'] != null) {
      await handleApiFailure(
        source: 'checkIn',
        errorMessage: response['message'] as String,
        errorCode: response['error'] as ApiErrors,
        isOnlineStatus: true,
      );
    }

    logger.i('Check-in response: $response');

    return TodayAttendance.fromJson(response['data']);
  }

  @override
  Future<TodayAttendance> checkOut() async {
    logger.i("checking out");
    var response = await _networkService.postHttp(
      AuthEndpoints.attendanceCheckOut,
      body: jsonEncode({}),
      tokenRequired: true,
    );

    if (response['error'] != null) {
      await handleApiFailure(
        source: 'checkOut',
        errorMessage: response['message'] as String,
        errorCode: response['error'] as ApiErrors,
        isOnlineStatus: true,
      );
    }

    logger.i('Check-out response: $response');

    return TodayAttendance.fromJson(response['data']);
  }

  @override
  Future<Map<String, dynamic>> toggleAttendance({
    required String serviceNumber,
    required String pin,
    String? notes,
  }) async {
    final payload = <String, dynamic>{
      'service_number': serviceNumber,
      'pin': pin,
    };

    if (notes != null && notes.isNotEmpty) {
      payload['notes'] = notes;
    }

    var response = await _networkService.postHttp(
      AuthEndpoints.attendanceToggle,
      body: jsonEncode(payload),
      tokenRequired: false, // This endpoint uses service_number and pin for auth
    );

    if (response['error'] != null) {
      await handleApiFailure(
        source: 'toggleAttendance',
        errorMessage: response['message'] as String,
        errorCode: response['error'] as ApiErrors,
        isOnlineStatus: true,
      );
    }

    logger.i('Toggle attendance response: $response');

    return response;
  }

  @override
  Future<TodayAttendance> getTodayAttendance() async {
    var response = await _networkService.getHttp(
      AuthEndpoints.attendanceToday,
      tokenRequired: true,
    );

    if (response['error'] != null) {
      await handleApiFailure(
        source: 'getTodayAttendance',
        errorMessage: response['message'] as String,
        errorCode: response['error'] as ApiErrors,
        isOnlineStatus: true,
      );
    }

    logger.i('Today attendance response: $response');

    return TodayAttendance.fromJson(response['data']);
  }

  @override
  Future<List<AttendanceHistoryItem>> getAttendanceHistory() async {
    var response = await _networkService.getHttp(
      AuthEndpoints.attendanceHistory,
      tokenRequired: true,
    );

    if (response['error'] != null) {
      await handleApiFailure(
        source: 'getAttendanceHistory',
        errorMessage: response['message'] as String,
        errorCode: response['error'] as ApiErrors,
        isOnlineStatus: true,
      );
    }

    logger.i('Attendance history response: $response');

    final List<dynamic> data = response['data'] ?? [];
    return data.map((item) => AttendanceHistoryItem.fromJson(item)).toList();
  }
}
