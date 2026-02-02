// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'police_station.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PoliceStationImpl _$$PoliceStationImplFromJson(Map<String, dynamic> json) =>
    _$PoliceStationImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      country: json['country'] as String?,
      county: json['county'] as String?,
      subcounty: json['subcounty'] as String?,
      ward: json['ward'] as String?,
      location: json['location'] as String?,
    );

Map<String, dynamic> _$$PoliceStationImplToJson(_$PoliceStationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'country': instance.country,
      'county': instance.county,
      'subcounty': instance.subcounty,
      'ward': instance.ward,
      'location': instance.location,
    };
