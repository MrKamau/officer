import 'package:officer/core/utilities/data/guarded_datasource_calls.dart';
import 'package:officer/features/auth/data/data_source/data.dart';
import 'package:officer/features/auth/data/data_source/device_data_source.dart';
import 'package:officer/features/auth/domain/models/auth_model/auth_model.dart';
import 'package:officer/features/auth/domain/models/device_registration_model/device_registration_model.dart';
import 'package:officer/features/auth/domain/models/auth_model/today_attendance.dart';
import 'package:officer/features/auth/domain/models/attendance_model/attendance_response.dart';
import 'package:officer/features/auth/domain/repository/repo.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthDataSource _dataSource;
  final DeviceDataSource _deviceDataSource;

  AuthRepositoryImpl(this._dataSource, this._deviceDataSource);

  @override
  Future<AuthModel> login(Map<String, dynamic> payload) async {
    var response = await guardedApiCall<AuthModel>(
      () => _dataSource.login(payload),
    );
    return response;
  }

  @override
  Future<DeviceRegistrationModel> registerDevice(
      Map<String, dynamic> payload) async {
    var response = await guardedApiCall<DeviceRegistrationModel>(
      () => _deviceDataSource.registerDevice(payload),
    );
    return response;
  }

  @override
  Future<TodayAttendance> checkIn() async {
    var response = await guardedApiCall<TodayAttendance>(
      () => _dataSource.checkIn(),
    );
    return response;
  }

  @override
  Future<TodayAttendance> checkOut() async {
    var response = await guardedApiCall<TodayAttendance>(
      () => _dataSource.checkOut(),
    );
    return response;
  }

  @override
  Future<Map<String, dynamic>> toggleAttendance({
    required String serviceNumber,
    required String pin,
    String? notes,
  }) async {
    var response = await guardedApiCall<Map<String, dynamic>>(
      () => _dataSource.toggleAttendance(
        serviceNumber: serviceNumber,
        pin: pin,
        notes: notes,
      ),
    );
    return response;
  }

  @override
  Future<TodayAttendance> getTodayAttendance() async {
    var response = await guardedApiCall<TodayAttendance>(
      () => _dataSource.getTodayAttendance(),
    );
    return response;
  }

  @override
  Future<List<AttendanceHistoryItem>> getAttendanceHistory() async {
    var response = await guardedApiCall<List<AttendanceHistoryItem>>(
      () => _dataSource.getAttendanceHistory(),
    );
    return response;
  }
}
