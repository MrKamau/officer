// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailsImpl _$$DetailsImplFromJson(Map<String, dynamic> json) =>
    _$DetailsImpl(
      category: json['Category'] as String?,
      narrative: json['Narrative'] as String?,
      description: json['Description'] as String?,
      documentType: json['Document Type'] as String?,
      equipmentType: json['Equipment Type'] as String?,
      nameOnTheDocument: json['Name on the Document'],
      numberOnTheDocument: json['Number on the Document'],
      dateAndTimeOfAccurrence: json['Date and time of accurrence'] as String?,
    );

Map<String, dynamic> _$$DetailsImplToJson(_$DetailsImpl instance) =>
    <String, dynamic>{
      'Category': instance.category,
      'Narrative': instance.narrative,
      'Description': instance.description,
      'Document Type': instance.documentType,
      'Equipment Type': instance.equipmentType,
      'Name on the Document': instance.nameOnTheDocument,
      'Number on the Document': instance.numberOnTheDocument,
      'Date and time of accurrence': instance.dateAndTimeOfAccurrence,
    };
