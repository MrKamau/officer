// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'police_officer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PoliceOfficer _$PoliceOfficerFromJson(Map<String, dynamic> json) {
  return _PoliceOfficer.fromJson(json);
}

/// @nodoc
mixin _$PoliceOfficer {
  int? get id => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'iprs_person')
  IprsPerson? get iprsPerson => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_number')
  String? get serviceNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_address')
  String? get emailAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'mobile_phone')
  String? get mobilePhone => throw _privateConstructorUsedError;
  Rank? get rank => throw _privateConstructorUsedError;
  @JsonKey(name: 'police_station')
  PoliceStation? get policeStation => throw _privateConstructorUsedError;
  @JsonKey(name: 'mug_shot')
  dynamic get mugShot => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PoliceOfficerCopyWith<PoliceOfficer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PoliceOfficerCopyWith<$Res> {
  factory $PoliceOfficerCopyWith(
          PoliceOfficer value, $Res Function(PoliceOfficer) then) =
      _$PoliceOfficerCopyWithImpl<$Res, PoliceOfficer>;
  @useResult
  $Res call(
      {int? id,
      User? user,
      @JsonKey(name: 'iprs_person') IprsPerson? iprsPerson,
      @JsonKey(name: 'service_number') String? serviceNumber,
      @JsonKey(name: 'email_address') String? emailAddress,
      @JsonKey(name: 'mobile_phone') String? mobilePhone,
      Rank? rank,
      @JsonKey(name: 'police_station') PoliceStation? policeStation,
      @JsonKey(name: 'mug_shot') dynamic mugShot});

  $UserCopyWith<$Res>? get user;
  $IprsPersonCopyWith<$Res>? get iprsPerson;
  $RankCopyWith<$Res>? get rank;
  $PoliceStationCopyWith<$Res>? get policeStation;
}

/// @nodoc
class _$PoliceOfficerCopyWithImpl<$Res, $Val extends PoliceOfficer>
    implements $PoliceOfficerCopyWith<$Res> {
  _$PoliceOfficerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? iprsPerson = freezed,
    Object? serviceNumber = freezed,
    Object? emailAddress = freezed,
    Object? mobilePhone = freezed,
    Object? rank = freezed,
    Object? policeStation = freezed,
    Object? mugShot = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      iprsPerson: freezed == iprsPerson
          ? _value.iprsPerson
          : iprsPerson // ignore: cast_nullable_to_non_nullable
              as IprsPerson?,
      serviceNumber: freezed == serviceNumber
          ? _value.serviceNumber
          : serviceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      emailAddress: freezed == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      mobilePhone: freezed == mobilePhone
          ? _value.mobilePhone
          : mobilePhone // ignore: cast_nullable_to_non_nullable
              as String?,
      rank: freezed == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as Rank?,
      policeStation: freezed == policeStation
          ? _value.policeStation
          : policeStation // ignore: cast_nullable_to_non_nullable
              as PoliceStation?,
      mugShot: freezed == mugShot
          ? _value.mugShot
          : mugShot // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $IprsPersonCopyWith<$Res>? get iprsPerson {
    if (_value.iprsPerson == null) {
      return null;
    }

    return $IprsPersonCopyWith<$Res>(_value.iprsPerson!, (value) {
      return _then(_value.copyWith(iprsPerson: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RankCopyWith<$Res>? get rank {
    if (_value.rank == null) {
      return null;
    }

    return $RankCopyWith<$Res>(_value.rank!, (value) {
      return _then(_value.copyWith(rank: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PoliceStationCopyWith<$Res>? get policeStation {
    if (_value.policeStation == null) {
      return null;
    }

    return $PoliceStationCopyWith<$Res>(_value.policeStation!, (value) {
      return _then(_value.copyWith(policeStation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PoliceOfficerImplCopyWith<$Res>
    implements $PoliceOfficerCopyWith<$Res> {
  factory _$$PoliceOfficerImplCopyWith(
          _$PoliceOfficerImpl value, $Res Function(_$PoliceOfficerImpl) then) =
      __$$PoliceOfficerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      User? user,
      @JsonKey(name: 'iprs_person') IprsPerson? iprsPerson,
      @JsonKey(name: 'service_number') String? serviceNumber,
      @JsonKey(name: 'email_address') String? emailAddress,
      @JsonKey(name: 'mobile_phone') String? mobilePhone,
      Rank? rank,
      @JsonKey(name: 'police_station') PoliceStation? policeStation,
      @JsonKey(name: 'mug_shot') dynamic mugShot});

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $IprsPersonCopyWith<$Res>? get iprsPerson;
  @override
  $RankCopyWith<$Res>? get rank;
  @override
  $PoliceStationCopyWith<$Res>? get policeStation;
}

/// @nodoc
class __$$PoliceOfficerImplCopyWithImpl<$Res>
    extends _$PoliceOfficerCopyWithImpl<$Res, _$PoliceOfficerImpl>
    implements _$$PoliceOfficerImplCopyWith<$Res> {
  __$$PoliceOfficerImplCopyWithImpl(
      _$PoliceOfficerImpl _value, $Res Function(_$PoliceOfficerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? iprsPerson = freezed,
    Object? serviceNumber = freezed,
    Object? emailAddress = freezed,
    Object? mobilePhone = freezed,
    Object? rank = freezed,
    Object? policeStation = freezed,
    Object? mugShot = freezed,
  }) {
    return _then(_$PoliceOfficerImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      iprsPerson: freezed == iprsPerson
          ? _value.iprsPerson
          : iprsPerson // ignore: cast_nullable_to_non_nullable
              as IprsPerson?,
      serviceNumber: freezed == serviceNumber
          ? _value.serviceNumber
          : serviceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      emailAddress: freezed == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      mobilePhone: freezed == mobilePhone
          ? _value.mobilePhone
          : mobilePhone // ignore: cast_nullable_to_non_nullable
              as String?,
      rank: freezed == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as Rank?,
      policeStation: freezed == policeStation
          ? _value.policeStation
          : policeStation // ignore: cast_nullable_to_non_nullable
              as PoliceStation?,
      mugShot: freezed == mugShot
          ? _value.mugShot
          : mugShot // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PoliceOfficerImpl implements _PoliceOfficer {
  _$PoliceOfficerImpl(
      {this.id,
      this.user,
      @JsonKey(name: 'iprs_person') this.iprsPerson,
      @JsonKey(name: 'service_number') this.serviceNumber,
      @JsonKey(name: 'email_address') this.emailAddress,
      @JsonKey(name: 'mobile_phone') this.mobilePhone,
      this.rank,
      @JsonKey(name: 'police_station') this.policeStation,
      @JsonKey(name: 'mug_shot') this.mugShot});

  factory _$PoliceOfficerImpl.fromJson(Map<String, dynamic> json) =>
      _$$PoliceOfficerImplFromJson(json);

  @override
  final int? id;
  @override
  final User? user;
  @override
  @JsonKey(name: 'iprs_person')
  final IprsPerson? iprsPerson;
  @override
  @JsonKey(name: 'service_number')
  final String? serviceNumber;
  @override
  @JsonKey(name: 'email_address')
  final String? emailAddress;
  @override
  @JsonKey(name: 'mobile_phone')
  final String? mobilePhone;
  @override
  final Rank? rank;
  @override
  @JsonKey(name: 'police_station')
  final PoliceStation? policeStation;
  @override
  @JsonKey(name: 'mug_shot')
  final dynamic mugShot;

  @override
  String toString() {
    return 'PoliceOfficer(id: $id, user: $user, iprsPerson: $iprsPerson, serviceNumber: $serviceNumber, emailAddress: $emailAddress, mobilePhone: $mobilePhone, rank: $rank, policeStation: $policeStation, mugShot: $mugShot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PoliceOfficerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.iprsPerson, iprsPerson) ||
                other.iprsPerson == iprsPerson) &&
            (identical(other.serviceNumber, serviceNumber) ||
                other.serviceNumber == serviceNumber) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.mobilePhone, mobilePhone) ||
                other.mobilePhone == mobilePhone) &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.policeStation, policeStation) ||
                other.policeStation == policeStation) &&
            const DeepCollectionEquality().equals(other.mugShot, mugShot));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      user,
      iprsPerson,
      serviceNumber,
      emailAddress,
      mobilePhone,
      rank,
      policeStation,
      const DeepCollectionEquality().hash(mugShot));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PoliceOfficerImplCopyWith<_$PoliceOfficerImpl> get copyWith =>
      __$$PoliceOfficerImplCopyWithImpl<_$PoliceOfficerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PoliceOfficerImplToJson(
      this,
    );
  }
}

abstract class _PoliceOfficer implements PoliceOfficer {
  factory _PoliceOfficer(
      {final int? id,
      final User? user,
      @JsonKey(name: 'iprs_person') final IprsPerson? iprsPerson,
      @JsonKey(name: 'service_number') final String? serviceNumber,
      @JsonKey(name: 'email_address') final String? emailAddress,
      @JsonKey(name: 'mobile_phone') final String? mobilePhone,
      final Rank? rank,
      @JsonKey(name: 'police_station') final PoliceStation? policeStation,
      @JsonKey(name: 'mug_shot') final dynamic mugShot}) = _$PoliceOfficerImpl;

  factory _PoliceOfficer.fromJson(Map<String, dynamic> json) =
      _$PoliceOfficerImpl.fromJson;

  @override
  int? get id;
  @override
  User? get user;
  @override
  @JsonKey(name: 'iprs_person')
  IprsPerson? get iprsPerson;
  @override
  @JsonKey(name: 'service_number')
  String? get serviceNumber;
  @override
  @JsonKey(name: 'email_address')
  String? get emailAddress;
  @override
  @JsonKey(name: 'mobile_phone')
  String? get mobilePhone;
  @override
  Rank? get rank;
  @override
  @JsonKey(name: 'police_station')
  PoliceStation? get policeStation;
  @override
  @JsonKey(name: 'mug_shot')
  dynamic get mugShot;
  @override
  @JsonKey(ignore: true)
  _$$PoliceOfficerImplCopyWith<_$PoliceOfficerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
