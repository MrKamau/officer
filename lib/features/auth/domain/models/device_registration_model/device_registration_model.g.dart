// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_registration_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeviceRegistrationModelImpl _$$DeviceRegistrationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DeviceRegistrationModelImpl(
      id: (json['id'] as num?)?.toInt(),
      deviceId: json['device_id'] as String?,
      deviceName: json['device_name'] as String?,
      serialNumber: json['serial_number'] as String?,
      policeStationId: (json['policeStationId'] as num?)?.toInt(),
      stationName: json['station_name'] as String?,
      deviceType: json['device_type'] as String?,
      imei: json['imei'] as String?,
      isActive: json['is_active'] as bool?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$DeviceRegistrationModelImplToJson(
        _$DeviceRegistrationModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'device_id': instance.deviceId,
      'device_name': instance.deviceName,
      'serial_number': instance.serialNumber,
      'policeStationId': instance.policeStationId,
      'station_name': instance.stationName,
      'device_type': instance.deviceType,
      'imei': instance.imei,
      'is_active': instance.isActive,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'token': instance.token,
    };
