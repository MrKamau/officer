// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'designation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DesignationImpl _$$DesignationImplFromJson(Map<String, dynamic> json) =>
    _$DesignationImpl(
      id: (json['id'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      officerId: (json['officerId'] as num?)?.toInt(),
      countiesId: json['countiesId'],
      roleId: (json['roleId'] as num?)?.toInt(),
      role: json['role'] == null
          ? null
          : Role.fromJson(json['role'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DesignationImplToJson(_$DesignationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt?.toIso8601String(),
      'officerId': instance.officerId,
      'countiesId': instance.countiesId,
      'roleId': instance.roleId,
      'role': instance.role,
    };
