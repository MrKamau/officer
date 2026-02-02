// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'police_station.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PoliceStation _$PoliceStationFromJson(Map<String, dynamic> json) {
  return _PoliceStation.fromJson(json);
}

/// @nodoc
mixin _$PoliceStation {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get county => throw _privateConstructorUsedError;
  String? get subcounty => throw _privateConstructorUsedError;
  String? get ward => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PoliceStationCopyWith<PoliceStation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PoliceStationCopyWith<$Res> {
  factory $PoliceStationCopyWith(
          PoliceStation value, $Res Function(PoliceStation) then) =
      _$PoliceStationCopyWithImpl<$Res, PoliceStation>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? country,
      String? county,
      String? subcounty,
      String? ward,
      String? location});
}

/// @nodoc
class _$PoliceStationCopyWithImpl<$Res, $Val extends PoliceStation>
    implements $PoliceStationCopyWith<$Res> {
  _$PoliceStationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? country = freezed,
    Object? county = freezed,
    Object? subcounty = freezed,
    Object? ward = freezed,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      county: freezed == county
          ? _value.county
          : county // ignore: cast_nullable_to_non_nullable
              as String?,
      subcounty: freezed == subcounty
          ? _value.subcounty
          : subcounty // ignore: cast_nullable_to_non_nullable
              as String?,
      ward: freezed == ward
          ? _value.ward
          : ward // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PoliceStationImplCopyWith<$Res>
    implements $PoliceStationCopyWith<$Res> {
  factory _$$PoliceStationImplCopyWith(
          _$PoliceStationImpl value, $Res Function(_$PoliceStationImpl) then) =
      __$$PoliceStationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? country,
      String? county,
      String? subcounty,
      String? ward,
      String? location});
}

/// @nodoc
class __$$PoliceStationImplCopyWithImpl<$Res>
    extends _$PoliceStationCopyWithImpl<$Res, _$PoliceStationImpl>
    implements _$$PoliceStationImplCopyWith<$Res> {
  __$$PoliceStationImplCopyWithImpl(
      _$PoliceStationImpl _value, $Res Function(_$PoliceStationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? country = freezed,
    Object? county = freezed,
    Object? subcounty = freezed,
    Object? ward = freezed,
    Object? location = freezed,
  }) {
    return _then(_$PoliceStationImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      county: freezed == county
          ? _value.county
          : county // ignore: cast_nullable_to_non_nullable
              as String?,
      subcounty: freezed == subcounty
          ? _value.subcounty
          : subcounty // ignore: cast_nullable_to_non_nullable
              as String?,
      ward: freezed == ward
          ? _value.ward
          : ward // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PoliceStationImpl implements _PoliceStation {
  _$PoliceStationImpl(
      {this.id,
      this.name,
      this.country,
      this.county,
      this.subcounty,
      this.ward,
      this.location});

  factory _$PoliceStationImpl.fromJson(Map<String, dynamic> json) =>
      _$$PoliceStationImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? country;
  @override
  final String? county;
  @override
  final String? subcounty;
  @override
  final String? ward;
  @override
  final String? location;

  @override
  String toString() {
    return 'PoliceStation(id: $id, name: $name, country: $country, county: $county, subcounty: $subcounty, ward: $ward, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PoliceStationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.county, county) || other.county == county) &&
            (identical(other.subcounty, subcounty) ||
                other.subcounty == subcounty) &&
            (identical(other.ward, ward) || other.ward == ward) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, country, county, subcounty, ward, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PoliceStationImplCopyWith<_$PoliceStationImpl> get copyWith =>
      __$$PoliceStationImplCopyWithImpl<_$PoliceStationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PoliceStationImplToJson(
      this,
    );
  }
}

abstract class _PoliceStation implements PoliceStation {
  factory _PoliceStation(
      {final int? id,
      final String? name,
      final String? country,
      final String? county,
      final String? subcounty,
      final String? ward,
      final String? location}) = _$PoliceStationImpl;

  factory _PoliceStation.fromJson(Map<String, dynamic> json) =
      _$PoliceStationImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get country;
  @override
  String? get county;
  @override
  String? get subcounty;
  @override
  String? get ward;
  @override
  String? get location;
  @override
  @JsonKey(ignore: true)
  _$$PoliceStationImplCopyWith<_$PoliceStationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
