// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'today_attendance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodayAttendanceImpl _$$TodayAttendanceImplFromJson(
        Map<String, dynamic> json) =>
    _$TodayAttendanceImpl(
      hasCheckedIn: json['hasCheckedIn'] as bool?,
      hasCheckedOut: json['hasCheckedOut'] as bool?,
      checkInTime: json['checkInTime'] == null
          ? null
          : DateTime.parse(json['checkInTime'] as String),
      checkOutTime: json['checkOutTime'] == null
          ? null
          : DateTime.parse(json['checkOutTime'] as String),
      attendanceDate: json['attendanceDate'] == null
          ? null
          : DateTime.parse(json['attendanceDate'] as String),
    );

Map<String, dynamic> _$$TodayAttendanceImplToJson(
        _$TodayAttendanceImpl instance) =>
    <String, dynamic>{
      'hasCheckedIn': instance.hasCheckedIn,
      'hasCheckedOut': instance.hasCheckedOut,
      'checkInTime': instance.checkInTime?.toIso8601String(),
      'checkOutTime': instance.checkOutTime?.toIso8601String(),
      'attendanceDate': instance.attendanceDate?.toIso8601String(),
    };
