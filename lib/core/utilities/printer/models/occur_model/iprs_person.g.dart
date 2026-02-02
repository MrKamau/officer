// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'iprs_person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IprsPersonImpl _$$IprsPersonImplFromJson(Map<String, dynamic> json) =>
    _$IprsPersonImpl(
      id: (json['id'] as num?)?.toInt(),
      idNo: json['id_no'] as String?,
      passportNo: json['passport_no'],
      firstName: json['first_name'] as String?,
      middleName: json['middle_name'] as String?,
      lastName: json['last_name'] as String?,
      countyOfBirth: json['county_of_birth'],
      districtOfBirth: json['district_of_birth'] as String?,
      divisionOfBirth: json['division_of_birth'],
      locationOfBirth: json['location_of_birth'],
      dateOfBirth: json['date_of_birth'] as String?,
      mugShot: json['mug_shot'],
      gender: json['gender'] == null
          ? null
          : Gender.fromJson(json['gender'] as Map<String, dynamic>),
      nationality: json['nationality'] == null
          ? null
          : Nationality.fromJson(json['nationality'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$IprsPersonImplToJson(_$IprsPersonImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'id_no': instance.idNo,
      'passport_no': instance.passportNo,
      'first_name': instance.firstName,
      'middle_name': instance.middleName,
      'last_name': instance.lastName,
      'county_of_birth': instance.countyOfBirth,
      'district_of_birth': instance.districtOfBirth,
      'division_of_birth': instance.divisionOfBirth,
      'location_of_birth': instance.locationOfBirth,
      'date_of_birth': instance.dateOfBirth,
      'mug_shot': instance.mugShot,
      'gender': instance.gender,
      'nationality': instance.nationality,
    };
