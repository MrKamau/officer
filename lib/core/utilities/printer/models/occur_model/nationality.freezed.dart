// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nationality.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Nationality _$NationalityFromJson(Map<String, dynamic> json) {
  return _Nationality.fromJson(json);
}

/// @nodoc
mixin _$Nationality {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get nationality => throw _privateConstructorUsedError;
  @JsonKey(name: 'iso_code')
  String? get isoCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NationalityCopyWith<Nationality> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NationalityCopyWith<$Res> {
  factory $NationalityCopyWith(
          Nationality value, $Res Function(Nationality) then) =
      _$NationalityCopyWithImpl<$Res, Nationality>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? nationality,
      @JsonKey(name: 'iso_code') String? isoCode});
}

/// @nodoc
class _$NationalityCopyWithImpl<$Res, $Val extends Nationality>
    implements $NationalityCopyWith<$Res> {
  _$NationalityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? nationality = freezed,
    Object? isoCode = freezed,
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
      nationality: freezed == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String?,
      isoCode: freezed == isoCode
          ? _value.isoCode
          : isoCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NationalityImplCopyWith<$Res>
    implements $NationalityCopyWith<$Res> {
  factory _$$NationalityImplCopyWith(
          _$NationalityImpl value, $Res Function(_$NationalityImpl) then) =
      __$$NationalityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? nationality,
      @JsonKey(name: 'iso_code') String? isoCode});
}

/// @nodoc
class __$$NationalityImplCopyWithImpl<$Res>
    extends _$NationalityCopyWithImpl<$Res, _$NationalityImpl>
    implements _$$NationalityImplCopyWith<$Res> {
  __$$NationalityImplCopyWithImpl(
      _$NationalityImpl _value, $Res Function(_$NationalityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? nationality = freezed,
    Object? isoCode = freezed,
  }) {
    return _then(_$NationalityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nationality: freezed == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String?,
      isoCode: freezed == isoCode
          ? _value.isoCode
          : isoCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NationalityImpl implements _Nationality {
  _$NationalityImpl(
      {this.id,
      this.name,
      this.nationality,
      @JsonKey(name: 'iso_code') this.isoCode});

  factory _$NationalityImpl.fromJson(Map<String, dynamic> json) =>
      _$$NationalityImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? nationality;
  @override
  @JsonKey(name: 'iso_code')
  final String? isoCode;

  @override
  String toString() {
    return 'Nationality(id: $id, name: $name, nationality: $nationality, isoCode: $isoCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NationalityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nationality, nationality) ||
                other.nationality == nationality) &&
            (identical(other.isoCode, isoCode) || other.isoCode == isoCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, nationality, isoCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NationalityImplCopyWith<_$NationalityImpl> get copyWith =>
      __$$NationalityImplCopyWithImpl<_$NationalityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NationalityImplToJson(
      this,
    );
  }
}

abstract class _Nationality implements Nationality {
  factory _Nationality(
      {final int? id,
      final String? name,
      final String? nationality,
      @JsonKey(name: 'iso_code') final String? isoCode}) = _$NationalityImpl;

  factory _Nationality.fromJson(Map<String, dynamic> json) =
      _$NationalityImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get nationality;
  @override
  @JsonKey(name: 'iso_code')
  String? get isoCode;
  @override
  @JsonKey(ignore: true)
  _$$NationalityImplCopyWith<_$NationalityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
