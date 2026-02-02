// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthStatePayloadImpl _$$AuthStatePayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthStatePayloadImpl(
      error: json['error'] as String?,
      authData: json['authData'] == null
          ? null
          : AuthModel.fromJson(json['authData'] as Map<String, dynamic>),
      todayAttendance: json['todayAttendance'] == null
          ? null
          : TodayAttendance.fromJson(
              json['todayAttendance'] as Map<String, dynamic>),
      attendanceHistory: (json['attendanceHistory'] as List<dynamic>?)
          ?.map(
              (e) => AttendanceHistoryItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AuthStatePayloadImplToJson(
        _$AuthStatePayloadImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'authData': instance.authData,
      'todayAttendance': instance.todayAttendance,
      'attendanceHistory': instance.attendanceHistory,
    };
