// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'occur_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OccurModelImpl _$$OccurModelImplFromJson(Map<String, dynamic> json) =>
    _$OccurModelImpl(
      date: json['date'] as String?,
      time: json['time'] as String?,
      location: json['location'] as String?,
      obNo: json['obNo'] as String?,
      policeStation: json['policeStation'] as String?,
      policeOfficer: json['policeOfficer'] as String?,
      category: json['category'] as String?,
      reporter: json['reporter'] as String?,
    );

Map<String, dynamic> _$$OccurModelImplToJson(_$OccurModelImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'time': instance.time,
      'location': instance.location,
      'obNo': instance.obNo,
      'policeStation': instance.policeStation,
      'policeOfficer': instance.policeOfficer,
      'category': instance.category,
      'reporter': instance.reporter,
    };
