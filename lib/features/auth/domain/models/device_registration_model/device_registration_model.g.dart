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
      fcmToken: json['fcm_token'] as String?,
      macAddress: json['mac_address'] as String?,
      buildNumber: json['build_number'] as String?,
      isActive: json['is_active'] as bool?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      token: json['token'] as String?,
      lastUpdated: json['last_updated'] as String?,
      postCount: (json['post_count'] as num?)?.toInt(),
      fcmTokenUpdated: json['fcm_token_updated'] as bool?,
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
      'fcm_token': instance.fcmToken,
      'mac_address': instance.macAddress,
      'build_number': instance.buildNumber,
      'is_active': instance.isActive,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'token': instance.token,
      'last_updated': instance.lastUpdated,
      'post_count': instance.postCount,
      'fcm_token_updated': instance.fcmTokenUpdated,
    };
