// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'designation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Designation _$DesignationFromJson(Map<String, dynamic> json) {
  return _Designation.fromJson(json);
}

/// @nodoc
mixin _$Designation {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  int? get officerId => throw _privateConstructorUsedError;
  dynamic get countiesId => throw _privateConstructorUsedError;
  int? get roleId => throw _privateConstructorUsedError;
  Role? get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DesignationCopyWith<Designation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DesignationCopyWith<$Res> {
  factory $DesignationCopyWith(
          Designation value, $Res Function(Designation) then) =
      _$DesignationCopyWithImpl<$Res, Designation>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      int? officerId,
      dynamic countiesId,
      int? roleId,
      Role? role});

  $RoleCopyWith<$Res>? get role;
}

/// @nodoc
class _$DesignationCopyWithImpl<$Res, $Val extends Designation>
    implements $DesignationCopyWith<$Res> {
  _$DesignationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? officerId = freezed,
    Object? countiesId = freezed,
    Object? roleId = freezed,
    Object? role = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      officerId: freezed == officerId
          ? _value.officerId
          : officerId // ignore: cast_nullable_to_non_nullable
              as int?,
      countiesId: freezed == countiesId
          ? _value.countiesId
          : countiesId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      roleId: freezed == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as int?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RoleCopyWith<$Res>? get role {
    if (_value.role == null) {
      return null;
    }

    return $RoleCopyWith<$Res>(_value.role!, (value) {
      return _then(_value.copyWith(role: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DesignationImplCopyWith<$Res>
    implements $DesignationCopyWith<$Res> {
  factory _$$DesignationImplCopyWith(
          _$DesignationImpl value, $Res Function(_$DesignationImpl) then) =
      __$$DesignationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      int? officerId,
      dynamic countiesId,
      int? roleId,
      Role? role});

  @override
  $RoleCopyWith<$Res>? get role;
}

/// @nodoc
class __$$DesignationImplCopyWithImpl<$Res>
    extends _$DesignationCopyWithImpl<$Res, _$DesignationImpl>
    implements _$$DesignationImplCopyWith<$Res> {
  __$$DesignationImplCopyWithImpl(
      _$DesignationImpl _value, $Res Function(_$DesignationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? officerId = freezed,
    Object? countiesId = freezed,
    Object? roleId = freezed,
    Object? role = freezed,
  }) {
    return _then(_$DesignationImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      officerId: freezed == officerId
          ? _value.officerId
          : officerId // ignore: cast_nullable_to_non_nullable
              as int?,
      countiesId: freezed == countiesId
          ? _value.countiesId
          : countiesId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      roleId: freezed == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as int?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DesignationImpl implements _Designation {
  _$DesignationImpl(
      {this.id,
      @JsonKey(name: 'created_at') this.createdAt,
      this.officerId,
      this.countiesId,
      this.roleId,
      this.role});

  factory _$DesignationImpl.fromJson(Map<String, dynamic> json) =>
      _$$DesignationImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  final int? officerId;
  @override
  final dynamic countiesId;
  @override
  final int? roleId;
  @override
  final Role? role;

  @override
  String toString() {
    return 'Designation(id: $id, createdAt: $createdAt, officerId: $officerId, countiesId: $countiesId, roleId: $roleId, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DesignationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.officerId, officerId) ||
                other.officerId == officerId) &&
            const DeepCollectionEquality()
                .equals(other.countiesId, countiesId) &&
            (identical(other.roleId, roleId) || other.roleId == roleId) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, officerId,
      const DeepCollectionEquality().hash(countiesId), roleId, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DesignationImplCopyWith<_$DesignationImpl> get copyWith =>
      __$$DesignationImplCopyWithImpl<_$DesignationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DesignationImplToJson(
      this,
    );
  }
}

abstract class _Designation implements Designation {
  factory _Designation(
      {final int? id,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      final int? officerId,
      final dynamic countiesId,
      final int? roleId,
      final Role? role}) = _$DesignationImpl;

  factory _Designation.fromJson(Map<String, dynamic> json) =
      _$DesignationImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  int? get officerId;
  @override
  dynamic get countiesId;
  @override
  int? get roleId;
  @override
  Role? get role;
  @override
  @JsonKey(ignore: true)
  _$$DesignationImplCopyWith<_$DesignationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
