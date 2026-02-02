import 'package:freezed_annotation/freezed_annotation.dart';

part 'today_attendance.freezed.dart';
part 'today_attendance.g.dart';

@freezed
class TodayAttendance with _$TodayAttendance {
  factory TodayAttendance({
    bool? hasCheckedIn,
    bool? hasCheckedOut,
    DateTime? checkInTime,
    DateTime? checkOutTime,
    DateTime? attendanceDate,
  }) = _TodayAttendance;

  factory TodayAttendance.fromJson(Map<String, dynamic> json) =>
      _$TodayAttendanceFromJson(json);
}
