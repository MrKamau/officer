// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reporter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReporterImpl _$$ReporterImplFromJson(Map<String, dynamic> json) =>
    _$ReporterImpl(
      id: (json['id'] as num?)?.toInt(),
      iprsPerson: json['iprs_person'] == null
          ? null
          : IprsPerson.fromJson(json['iprs_person'] as Map<String, dynamic>),
      phoneNumber: json['phone_number'] as String?,
      emailAddress: json['email_address'] as String?,
      countyOfResidence: json['county_of_residence'] as String?,
      subCountyOfResidence: json['sub_county_of_residence'] as String?,
    );

Map<String, dynamic> _$$ReporterImplToJson(_$ReporterImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'iprs_person': instance.iprsPerson,
      'phone_number': instance.phoneNumber,
      'email_address': instance.emailAddress,
      'county_of_residence': instance.countyOfResidence,
      'sub_county_of_residence': instance.subCountyOfResidence,
    };
