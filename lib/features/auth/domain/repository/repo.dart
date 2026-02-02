import 'package:officer/features/auth/domain/models/auth_model/auth_model.dart';
import 'package:officer/features/auth/domain/models/device_registration_model/device_registration_model.dart';
import 'package:officer/features/auth/domain/models/auth_model/today_attendance.dart';
import 'package:officer/features/auth/domain/models/attendance_model/attendance_response.dart';

abstract class AuthRepository {
  Future<AuthModel> login(Map<String, dynamic> payload);
  Future<DeviceRegistrationModel> registerDevice(Map<String, dynamic> payload);
  Future<TodayAttendance> checkIn();
  Future<TodayAttendance> checkOut();
  Future<Map<String, dynamic>> toggleAttendance({
    required String serviceNumber,
    required String pin,
    String? notes,
  });
  Future<TodayAttendance> getTodayAttendance();
  Future<List<AttendanceHistoryItem>> getAttendanceHistory();
}
