// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_registration_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeviceRegistrationModel _$DeviceRegistrationModelFromJson(
    Map<String, dynamic> json) {
  return _DeviceRegistrationModel.fromJson(json);
}

/// @nodoc
mixin _$DeviceRegistrationModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_id')
  String? get deviceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_name')
  String? get deviceName => throw _privateConstructorUsedError;
  @JsonKey(name: 'serial_number')
  String? get serialNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'policeStationId')
  int? get policeStationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'station_name')
  String? get stationName => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_type')
  String? get deviceType => throw _privateConstructorUsedError;
  String? get imei => throw _privateConstructorUsedError;
  @JsonKey(name: 'fcm_token')
  String? get fcmToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'mac_address')
  String? get macAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'build_number')
  String? get buildNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_updated')
  String? get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'post_count')
  int? get postCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'fcm_token_updated')
  bool? get fcmTokenUpdated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceRegistrationModelCopyWith<DeviceRegistrationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceRegistrationModelCopyWith<$Res> {
  factory $DeviceRegistrationModelCopyWith(DeviceRegistrationModel value,
          $Res Function(DeviceRegistrationModel) then) =
      _$DeviceRegistrationModelCopyWithImpl<$Res, DeviceRegistrationModel>;
  @useResult
  $Res call(
      {int? id,
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
      @JsonKey(name: 'fcm_token_updated') bool? fcmTokenUpdated});
}

/// @nodoc
class _$DeviceRegistrationModelCopyWithImpl<$Res,
        $Val extends DeviceRegistrationModel>
    implements $DeviceRegistrationModelCopyWith<$Res> {
  _$DeviceRegistrationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? deviceId = freezed,
    Object? deviceName = freezed,
    Object? serialNumber = freezed,
    Object? policeStationId = freezed,
    Object? stationName = freezed,
    Object? deviceType = freezed,
    Object? imei = freezed,
    Object? fcmToken = freezed,
    Object? macAddress = freezed,
    Object? buildNumber = freezed,
    Object? isActive = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? token = freezed,
    Object? lastUpdated = freezed,
    Object? postCount = freezed,
    Object? fcmTokenUpdated = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceName: freezed == deviceName
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      policeStationId: freezed == policeStationId
          ? _value.policeStationId
          : policeStationId // ignore: cast_nullable_to_non_nullable
              as int?,
      stationName: freezed == stationName
          ? _value.stationName
          : stationName // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceType: freezed == deviceType
          ? _value.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as String?,
      imei: freezed == imei
          ? _value.imei
          : imei // ignore: cast_nullable_to_non_nullable
              as String?,
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      macAddress: freezed == macAddress
          ? _value.macAddress
          : macAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      buildNumber: freezed == buildNumber
          ? _value.buildNumber
          : buildNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as String?,
      postCount: freezed == postCount
          ? _value.postCount
          : postCount // ignore: cast_nullable_to_non_nullable
              as int?,
      fcmTokenUpdated: freezed == fcmTokenUpdated
          ? _value.fcmTokenUpdated
          : fcmTokenUpdated // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceRegistrationModelImplCopyWith<$Res>
    implements $DeviceRegistrationModelCopyWith<$Res> {
  factory _$$DeviceRegistrationModelImplCopyWith(
          _$DeviceRegistrationModelImpl value,
          $Res Function(_$DeviceRegistrationModelImpl) then) =
      __$$DeviceRegistrationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
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
      @JsonKey(name: 'fcm_token_updated') bool? fcmTokenUpdated});
}

/// @nodoc
class __$$DeviceRegistrationModelImplCopyWithImpl<$Res>
    extends _$DeviceRegistrationModelCopyWithImpl<$Res,
        _$DeviceRegistrationModelImpl>
    implements _$$DeviceRegistrationModelImplCopyWith<$Res> {
  __$$DeviceRegistrationModelImplCopyWithImpl(
      _$DeviceRegistrationModelImpl _value,
      $Res Function(_$DeviceRegistrationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? deviceId = freezed,
    Object? deviceName = freezed,
    Object? serialNumber = freezed,
    Object? policeStationId = freezed,
    Object? stationName = freezed,
    Object? deviceType = freezed,
    Object? imei = freezed,
    Object? fcmToken = freezed,
    Object? macAddress = freezed,
    Object? buildNumber = freezed,
    Object? isActive = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? token = freezed,
    Object? lastUpdated = freezed,
    Object? postCount = freezed,
    Object? fcmTokenUpdated = freezed,
  }) {
    return _then(_$DeviceRegistrationModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceName: freezed == deviceName
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      policeStationId: freezed == policeStationId
          ? _value.policeStationId
          : policeStationId // ignore: cast_nullable_to_non_nullable
              as int?,
      stationName: freezed == stationName
          ? _value.stationName
          : stationName // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceType: freezed == deviceType
          ? _value.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as String?,
      imei: freezed == imei
          ? _value.imei
          : imei // ignore: cast_nullable_to_non_nullable
              as String?,
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      macAddress: freezed == macAddress
          ? _value.macAddress
          : macAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      buildNumber: freezed == buildNumber
          ? _value.buildNumber
          : buildNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as String?,
      postCount: freezed == postCount
          ? _value.postCount
          : postCount // ignore: cast_nullable_to_non_nullable
              as int?,
      fcmTokenUpdated: freezed == fcmTokenUpdated
          ? _value.fcmTokenUpdated
          : fcmTokenUpdated // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceRegistrationModelImpl implements _DeviceRegistrationModel {
  _$DeviceRegistrationModelImpl(
      {this.id,
      @JsonKey(name: 'device_id') this.deviceId,
      @JsonKey(name: 'device_name') this.deviceName,
      @JsonKey(name: 'serial_number') this.serialNumber,
      @JsonKey(name: 'policeStationId') this.policeStationId,
      @JsonKey(name: 'station_name') this.stationName,
      @JsonKey(name: 'device_type') this.deviceType,
      this.imei,
      @JsonKey(name: 'fcm_token') this.fcmToken,
      @JsonKey(name: 'mac_address') this.macAddress,
      @JsonKey(name: 'build_number') this.buildNumber,
      @JsonKey(name: 'is_active') this.isActive,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.token,
      @JsonKey(name: 'last_updated') this.lastUpdated,
      @JsonKey(name: 'post_count') this.postCount,
      @JsonKey(name: 'fcm_token_updated') this.fcmTokenUpdated});

  factory _$DeviceRegistrationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceRegistrationModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'device_id')
  final String? deviceId;
  @override
  @JsonKey(name: 'device_name')
  final String? deviceName;
  @override
  @JsonKey(name: 'serial_number')
  final String? serialNumber;
  @override
  @JsonKey(name: 'policeStationId')
  final int? policeStationId;
  @override
  @JsonKey(name: 'station_name')
  final String? stationName;
  @override
  @JsonKey(name: 'device_type')
  final String? deviceType;
  @override
  final String? imei;
  @override
  @JsonKey(name: 'fcm_token')
  final String? fcmToken;
  @override
  @JsonKey(name: 'mac_address')
  final String? macAddress;
  @override
  @JsonKey(name: 'build_number')
  final String? buildNumber;
  @override
  @JsonKey(name: 'is_active')
  final bool? isActive;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  final String? token;
  @override
  @JsonKey(name: 'last_updated')
  final String? lastUpdated;
  @override
  @JsonKey(name: 'post_count')
  final int? postCount;
  @override
  @JsonKey(name: 'fcm_token_updated')
  final bool? fcmTokenUpdated;

  @override
  String toString() {
    return 'DeviceRegistrationModel(id: $id, deviceId: $deviceId, deviceName: $deviceName, serialNumber: $serialNumber, policeStationId: $policeStationId, stationName: $stationName, deviceType: $deviceType, imei: $imei, fcmToken: $fcmToken, macAddress: $macAddress, buildNumber: $buildNumber, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt, token: $token, lastUpdated: $lastUpdated, postCount: $postCount, fcmTokenUpdated: $fcmTokenUpdated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceRegistrationModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.deviceName, deviceName) ||
                other.deviceName == deviceName) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
            (identical(other.policeStationId, policeStationId) ||
                other.policeStationId == policeStationId) &&
            (identical(other.stationName, stationName) ||
                other.stationName == stationName) &&
            (identical(other.deviceType, deviceType) ||
                other.deviceType == deviceType) &&
            (identical(other.imei, imei) || other.imei == imei) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.macAddress, macAddress) ||
                other.macAddress == macAddress) &&
            (identical(other.buildNumber, buildNumber) ||
                other.buildNumber == buildNumber) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.postCount, postCount) ||
                other.postCount == postCount) &&
            (identical(other.fcmTokenUpdated, fcmTokenUpdated) ||
                other.fcmTokenUpdated == fcmTokenUpdated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      deviceId,
      deviceName,
      serialNumber,
      policeStationId,
      stationName,
      deviceType,
      imei,
      fcmToken,
      macAddress,
      buildNumber,
      isActive,
      createdAt,
      updatedAt,
      token,
      lastUpdated,
      postCount,
      fcmTokenUpdated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceRegistrationModelImplCopyWith<_$DeviceRegistrationModelImpl>
      get copyWith => __$$DeviceRegistrationModelImplCopyWithImpl<
          _$DeviceRegistrationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceRegistrationModelImplToJson(
      this,
    );
  }
}

abstract class _DeviceRegistrationModel implements DeviceRegistrationModel {
  factory _DeviceRegistrationModel(
          {final int? id,
          @JsonKey(name: 'device_id') final String? deviceId,
          @JsonKey(name: 'device_name') final String? deviceName,
          @JsonKey(name: 'serial_number') final String? serialNumber,
          @JsonKey(name: 'policeStationId') final int? policeStationId,
          @JsonKey(name: 'station_name') final String? stationName,
          @JsonKey(name: 'device_type') final String? deviceType,
          final String? imei,
          @JsonKey(name: 'fcm_token') final String? fcmToken,
          @JsonKey(name: 'mac_address') final String? macAddress,
          @JsonKey(name: 'build_number') final String? buildNumber,
          @JsonKey(name: 'is_active') final bool? isActive,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt,
          final String? token,
          @JsonKey(name: 'last_updated') final String? lastUpdated,
          @JsonKey(name: 'post_count') final int? postCount,
          @JsonKey(name: 'fcm_token_updated') final bool? fcmTokenUpdated}) =
      _$DeviceRegistrationModelImpl;

  factory _DeviceRegistrationModel.fromJson(Map<String, dynamic> json) =
      _$DeviceRegistrationModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'device_id')
  String? get deviceId;
  @override
  @JsonKey(name: 'device_name')
  String? get deviceName;
  @override
  @JsonKey(name: 'serial_number')
  String? get serialNumber;
  @override
  @JsonKey(name: 'policeStationId')
  int? get policeStationId;
  @override
  @JsonKey(name: 'station_name')
  String? get stationName;
  @override
  @JsonKey(name: 'device_type')
  String? get deviceType;
  @override
  String? get imei;
  @override
  @JsonKey(name: 'fcm_token')
  String? get fcmToken;
  @override
  @JsonKey(name: 'mac_address')
  String? get macAddress;
  @override
  @JsonKey(name: 'build_number')
  String? get buildNumber;
  @override
  @JsonKey(name: 'is_active')
  bool? get isActive;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  String? get token;
  @override
  @JsonKey(name: 'last_updated')
  String? get lastUpdated;
  @override
  @JsonKey(name: 'post_count')
  int? get postCount;
  @override
  @JsonKey(name: 'fcm_token_updated')
  bool? get fcmTokenUpdated;
  @override
  @JsonKey(ignore: true)
  _$$DeviceRegistrationModelImplCopyWith<_$DeviceRegistrationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
