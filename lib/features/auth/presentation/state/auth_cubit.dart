import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:officer/core/data/datasources/local_storage_data_source.dart';
import 'package:officer/core/data/datasources/secure_storage_data_source.dart';
import 'package:officer/core/domain/usecase/usecase_typedefs.dart';
import 'package:officer/core/utilities/logging_utils.dart';
import 'package:officer/features/auth/domain/models/auth_model/auth_model.dart';
import 'package:officer/features/auth/domain/models/auth_model/today_attendance.dart';
import 'package:officer/features/auth/domain/models/attendance_model/attendance_response.dart';
import 'package:officer/features/auth/domain/usecase/login_usecase.dart';
import 'package:officer/features/auth/domain/usecase/register_device_usecase.dart';
import 'package:officer/features/auth/domain/usecase/check_in_usecase.dart';
import 'package:officer/features/auth/domain/usecase/check_out_usecase.dart';
import 'package:officer/features/auth/domain/usecase/get_today_attendance_usecase.dart';
import 'package:officer/features/auth/domain/usecase/get_attendance_history_usecase.dart';
import 'package:officer/features/auth/domain/repository/repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';
part 'auth_cubit.g.dart';

class AuthCubit extends Cubit<AuthState> {
  final LoginUseCase _loginUseCase;
  final RegisterDeviceUseCase _registerDeviceUseCase;
  final CheckInUseCase _checkInUseCase;
  final CheckOutUseCase _checkOutUseCase;
  final GetTodayAttendanceUseCase _getTodayAttendanceUseCase;
  final GetAttendanceHistoryUseCase _getAttendanceHistoryUseCase;
  final AuthRepository _authRepository;

  AuthCubit(
    this._loginUseCase,
    this._registerDeviceUseCase,
    this._checkInUseCase,
    this._checkOutUseCase,
    this._getTodayAttendanceUseCase,
    this._getAttendanceHistoryUseCase,
    this._authRepository,
  ) : super(AuthState.initial(
          payload: AuthStatePayload(
            error: null,
          ),
        ));

  Future<AuthModel> login(Map<String, dynamic> payload) async {
    emit(AuthState.loading());
    final result = await _loginUseCase(payload);
    return result.fold((l) {
      storeData("token", l.token!);
      storeData("auth_model", jsonEncode(l.toJson()));

      emit(AuthState.success(
        payload: AuthStatePayload(
          error: null,
          authData: l,
        ),
      ));
      return l;
    }, (r) {
      emit(AuthState.error(payload: AuthStatePayload(error: r.message)));
      throw Exception(r.message);
    });
  }

  /// Register device silently on app startup
  /// Does not emit loading/success/error states
  /// Runs in background and stores device token securely
  Future<void> registerDevice() async {
    try {
      final result = await _registerDeviceUseCase(const NoParams());
      result.fold(
        (deviceToken) async {
          if (deviceToken != null && deviceToken.isNotEmpty) {
            await storeSecureData('device_registration_token', deviceToken);
            logger.i('✅ Device registration token stored securely');
          } else {
            logger.w('⚠️ Device registration token not returned by server');
          }
        },
        (error) => logger.w('Device registration failed: ${error.message}'),
      );
    } catch (e) {
      logger.e('Error during device registration: $e');
    }
  }

  Future<TodayAttendance> checkIn() async {
    emit(AuthState.loading());
    final result = await _checkInUseCase(NoParams());
    return result.fold((attendance) {
      // Update the stored auth model with new attendance data
      _updateStoredAttendance(attendance);

      emit(AuthState.success(
        payload: AuthStatePayload(
          error: null,
          todayAttendance: attendance,
        ),
      ));
      logger.i('Check-in successful: ${attendance.checkInTime}');
      return attendance;
    }, (error) {
      emit(AuthState.error(payload: AuthStatePayload(error: error.message)));
      logger.e('Check-in error: ${error.message}');
      throw Exception(error.message);
    });
  }

  Future<TodayAttendance> checkOut() async {
    emit(AuthState.loading());
    final result = await _checkOutUseCase(NoParams());
    return result.fold((attendance) {
      // Update the stored auth model with new attendance data
      _updateStoredAttendance(attendance);

      emit(AuthState.success(
        payload: AuthStatePayload(
          error: null,
          todayAttendance: attendance,
        ),
      ));
      logger.i('Check-out successful: ${attendance.checkOutTime}');
      return attendance;
    }, (error) {
      emit(AuthState.error(payload: AuthStatePayload(error: error.message)));
      logger.e('Check-out error: ${error.message}');
      throw Exception(error.message);
    });
  }

  Future<Map<String, dynamic>> toggleAttendance({
    required String serviceNumber,
    required String pin,
    String? notes,
  }) async {
    emit(AuthState.loading());
    try {
      final response = await _authRepository.toggleAttendance(
        serviceNumber: serviceNumber,
        pin: pin,
        notes: notes,
      );
      
      emit(AuthState.success(
        payload: AuthStatePayload(
          error: null,
        ),
      ));
      
      logger.i('Toggle attendance successful: ${response['message']}, action: ${response['action']}');
      return response;
    } catch (e) {
      final errorMessage = e.toString().replaceAll('Exception:', '').trim();
      emit(AuthState.error(payload: AuthStatePayload(error: errorMessage)));
      logger.e('Toggle attendance error: $errorMessage');
      rethrow;
    }
  }

  Future<TodayAttendance> getTodayAttendance() async {
    emit(AuthState.loading());
    final result = await _getTodayAttendanceUseCase(NoParams());
    return result.fold((attendance) {
      emit(AuthState.success(
        payload: AuthStatePayload(
          error: null,
          todayAttendance: attendance,
        ),
      ));
      logger.i('Today attendance retrieved: ${attendance.toJson()}');
      return attendance;
    }, (error) {
      emit(AuthState.error(payload: AuthStatePayload(error: error.message)));
      logger.e('Get today attendance error: ${error.message}');
      throw Exception(error.message);
    });
  }

  Future<List<AttendanceHistoryItem>> getAttendanceHistory() async {
    emit(AuthState.loading());
    final result = await _getAttendanceHistoryUseCase(NoParams());
    return result.fold((history) {
      emit(AuthState.success(
        payload: AuthStatePayload(
          error: null,
          attendanceHistory: history,
        ),
      ));
      logger.i('Attendance history retrieved: ${history.length} records');
      return history;
    }, (error) {
      emit(AuthState.error(payload: AuthStatePayload(error: error.message)));
      logger.e('Get attendance history error: ${error.message}');
      throw Exception(error.message);
    });
  }

  /// Helper method to update the stored auth model with new attendance data
  Future<void> _updateStoredAttendance(TodayAttendance attendance) async {
    try {
      final authData = await getData('auth_model');
      if (authData != null) {
        final authModel = AuthModel.fromJson(jsonDecode(authData));
        // Create updated officer with new attendance
        final updatedOfficer = authModel.officer?.copyWith(
          todayAttendance: attendance,
        );
        // Create updated auth model
        final updatedAuthModel = authModel.copyWith(
          officer: updatedOfficer,
        );
        // Store updated auth model
        await storeData('auth_model', jsonEncode(updatedAuthModel.toJson()));
        logger.i('Stored auth model updated with new attendance data');
      }
    } catch (e) {
      logger.e('Error updating stored attendance: $e');
    }
  }
}
