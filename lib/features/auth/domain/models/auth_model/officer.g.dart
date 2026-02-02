// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'officer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OfficerImpl _$$OfficerImplFromJson(Map<String, dynamic> json) =>
    _$OfficerImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      serviceNumber: json['service_number'] as String?,
      isTemporaryPassword: json['is_temporary_password'] as bool?,
      email: json['email'] as String?,
      rank: json['rank'] == null
          ? null
          : Rank.fromJson(json['rank'] as Map<String, dynamic>),
      badgeNo: json['badge_no'] as String?,
      dateOfBirth: json['date_of_birth'] as String?,
      gender: json['gender'] as String?,
      contactInfo: json['contact_info'] as String?,
      emergencyContactInfo: json['emergency_contact_info'] as String?,
      iPrsPersonId: (json['iPRS_PersonId'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      wardId: json['wardId'],
      stationId: (json['stationId'] as num?)?.toInt(),
      iprs: json['iprs'] == null
          ? null
          : Iprs.fromJson(json['iprs'] as Map<String, dynamic>),
      designation: (json['Designation'] as List<dynamic>?)
          ?.map((e) => Designation.fromJson(e as Map<String, dynamic>))
          .toList(),
      station: json['station'] == null
          ? null
          : Station.fromJson(json['station'] as Map<String, dynamic>),
      role: json['role'] == null
          ? null
          : Role.fromJson(json['role'] as Map<String, dynamic>),
      todayAttendance: json['todayAttendance'] == null
          ? null
          : TodayAttendance.fromJson(
              json['todayAttendance'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OfficerImplToJson(_$OfficerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'service_number': instance.serviceNumber,
      'is_temporary_password': instance.isTemporaryPassword,
      'email': instance.email,
      'rank': instance.rank,
      'badge_no': instance.badgeNo,
      'date_of_birth': instance.dateOfBirth,
      'gender': instance.gender,
      'contact_info': instance.contactInfo,
      'emergency_contact_info': instance.emergencyContactInfo,
      'iPRS_PersonId': instance.iPrsPersonId,
      'created_at': instance.createdAt?.toIso8601String(),
      'wardId': instance.wardId,
      'stationId': instance.stationId,
      'iprs': instance.iprs,
      'Designation': instance.designation,
      'station': instance.station,
      'role': instance.role,
      'todayAttendance': instance.todayAttendance,
    };
