import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_registration_model.freezed.dart';
part 'device_registration_model.g.dart';

@freezed
class DeviceRegistrationModel with _$DeviceRegistrationModel {
  factory DeviceRegistrationModel({
    int? id,
    @JsonKey(name: 'device_id') String? deviceId,
    @JsonKey(name: 'device_name') String? deviceName,
    @JsonKey(name: 'serial_number') String? serialNumber,
    @JsonKey(name: 'policeStationId') int? policeStationId,
    @JsonKey(name: 'station_name') String? stationName,
    @JsonKey(name: 'device_type') String? deviceType,
    String? imei,
    @JsonKey(name: 'fcm_token') String? fcmToken,
    @JsonKey(name: 'mac_address') String? macAddress,
    @JsonKey(name: 'build_number') String? buildNumber,
    @JsonKey(name: 'is_active') bool? isActive,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    String? token,
    @JsonKey(name: 'last_updated') String? lastUpdated,
    @JsonKey(name: 'post_count') int? postCount,
    @JsonKey(name: 'fcm_token_updated') bool? fcmTokenUpdated,
  }) = _DeviceRegistrationModel;

  factory DeviceRegistrationModel.fromJson(Map<String, dynamic> json) =>
      _$DeviceRegistrationModelFromJson(json);
}
