// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'occurrence.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OccurrenceImpl _$$OccurrenceImplFromJson(Map<String, dynamic> json) =>
    _$OccurrenceImpl(
      id: (json['id'] as num?)?.toInt(),
      obNo: json['ob_no'] as String?,
      narrative: json['narrative'] as String?,
      location: json['location'] as String?,
      lat: json['lat'],
      long: json['long'],
      module: json['module'] as String?,
      isComplete: json['is_complete'] as bool?,
      isClosed: json['is_closed'] as bool?,
      postedDate: json['posted_date'] == null
          ? null
          : DateTime.parse(json['posted_date'] as String),
      policeStation: (json['police_station'] as num?)?.toInt(),
      policeOfficer: (json['police_officer'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$OccurrenceImplToJson(_$OccurrenceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ob_no': instance.obNo,
      'narrative': instance.narrative,
      'location': instance.location,
      'lat': instance.lat,
      'long': instance.long,
      'module': instance.module,
      'is_complete': instance.isComplete,
      'is_closed': instance.isClosed,
      'posted_date': instance.postedDate?.toIso8601String(),
      'police_station': instance.policeStation,
      'police_officer': instance.policeOfficer,
    };
