// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nationality.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NationalityImpl _$$NationalityImplFromJson(Map<String, dynamic> json) =>
    _$NationalityImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      nationality: json['nationality'] as String?,
      isoCode: json['iso_code'] as String?,
    );

Map<String, dynamic> _$$NationalityImplToJson(_$NationalityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'nationality': instance.nationality,
      'iso_code': instance.isoCode,
    };
