import 'package:freezed_annotation/freezed_annotation.dart';
import '../auth_model/today_attendance.dart';

part 'attendance_response.freezed.dart';
part 'attendance_response.g.dart';

@freezed
class AttendanceResponse with _$AttendanceResponse {
  factory AttendanceResponse({
    String? message,
    TodayAttendance? data,
  }) = _AttendanceResponse;

  factory AttendanceResponse.fromJson(Map<String, dynamic> json) =>
      _$AttendanceResponseFromJson(json);
}

@freezed
class AttendanceHistoryResponse with _$AttendanceHistoryResponse {
  factory AttendanceHistoryResponse({
    String? message,
    List<AttendanceHistoryItem>? data,
  }) = _AttendanceHistoryResponse;

  factory AttendanceHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$AttendanceHistoryResponseFromJson(json);
}

@freezed
class AttendanceHistoryItem with _$AttendanceHistoryItem {
  factory AttendanceHistoryItem({
    int? id,
    int? officerId,
    DateTime? checkInTime,
    DateTime? checkOutTime,
    DateTime? attendanceDate,
    String? status,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _AttendanceHistoryItem;

  factory AttendanceHistoryItem.fromJson(Map<String, dynamic> json) =>
      _$AttendanceHistoryItemFromJson(json);
}
