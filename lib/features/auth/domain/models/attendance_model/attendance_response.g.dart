// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttendanceResponseImpl _$$AttendanceResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AttendanceResponseImpl(
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : TodayAttendance.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AttendanceResponseImplToJson(
        _$AttendanceResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

_$AttendanceHistoryResponseImpl _$$AttendanceHistoryResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AttendanceHistoryResponseImpl(
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map(
              (e) => AttendanceHistoryItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AttendanceHistoryResponseImplToJson(
        _$AttendanceHistoryResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

_$AttendanceHistoryItemImpl _$$AttendanceHistoryItemImplFromJson(
        Map<String, dynamic> json) =>
    _$AttendanceHistoryItemImpl(
      id: (json['id'] as num?)?.toInt(),
      officerId: (json['officerId'] as num?)?.toInt(),
      checkInTime: json['checkInTime'] == null
          ? null
          : DateTime.parse(json['checkInTime'] as String),
      checkOutTime: json['checkOutTime'] == null
          ? null
          : DateTime.parse(json['checkOutTime'] as String),
      attendanceDate: json['attendanceDate'] == null
          ? null
          : DateTime.parse(json['attendanceDate'] as String),
      status: json['status'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$AttendanceHistoryItemImplToJson(
        _$AttendanceHistoryItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'officerId': instance.officerId,
      'checkInTime': instance.checkInTime?.toIso8601String(),
      'checkOutTime': instance.checkOutTime?.toIso8601String(),
      'attendanceDate': instance.attendanceDate?.toIso8601String(),
      'status': instance.status,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
