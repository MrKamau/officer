// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'police_officer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PoliceOfficerImpl _$$PoliceOfficerImplFromJson(Map<String, dynamic> json) =>
    _$PoliceOfficerImpl(
      id: (json['id'] as num?)?.toInt(),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      iprsPerson: json['iprs_person'] == null
          ? null
          : IprsPerson.fromJson(json['iprs_person'] as Map<String, dynamic>),
      serviceNumber: json['service_number'] as String?,
      emailAddress: json['email_address'] as String?,
      mobilePhone: json['mobile_phone'] as String?,
      rank: json['rank'] == null
          ? null
          : Rank.fromJson(json['rank'] as Map<String, dynamic>),
      policeStation: json['police_station'] == null
          ? null
          : PoliceStation.fromJson(
              json['police_station'] as Map<String, dynamic>),
      mugShot: json['mug_shot'],
    );

Map<String, dynamic> _$$PoliceOfficerImplToJson(_$PoliceOfficerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'iprs_person': instance.iprsPerson,
      'service_number': instance.serviceNumber,
      'email_address': instance.emailAddress,
      'mobile_phone': instance.mobilePhone,
      'rank': instance.rank,
      'police_station': instance.policeStation,
      'mug_shot': instance.mugShot,
    };
