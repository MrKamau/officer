// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'iprs_person.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IprsPerson _$IprsPersonFromJson(Map<String, dynamic> json) {
  return _IprsPerson.fromJson(json);
}

/// @nodoc
mixin _$IprsPerson {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_no')
  String? get idNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'passport_no')
  dynamic get passportNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'middle_name')
  String? get middleName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'county_of_birth')
  dynamic get countyOfBirth => throw _privateConstructorUsedError;
  @JsonKey(name: 'district_of_birth')
  String? get districtOfBirth => throw _privateConstructorUsedError;
  @JsonKey(name: 'division_of_birth')
  dynamic get divisionOfBirth => throw _privateConstructorUsedError;
  @JsonKey(name: 'location_of_birth')
  dynamic get locationOfBirth => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_of_birth')
  String? get dateOfBirth => throw _privateConstructorUsedError;
  @JsonKey(name: 'mug_shot')
  dynamic get mugShot => throw _privateConstructorUsedError;
  Gender? get gender => throw _privateConstructorUsedError;
  Nationality? get nationality => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IprsPersonCopyWith<IprsPerson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IprsPersonCopyWith<$Res> {
  factory $IprsPersonCopyWith(
          IprsPerson value, $Res Function(IprsPerson) then) =
      _$IprsPersonCopyWithImpl<$Res, IprsPerson>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'id_no') String? idNo,
      @JsonKey(name: 'passport_no') dynamic passportNo,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'middle_name') String? middleName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'county_of_birth') dynamic countyOfBirth,
      @JsonKey(name: 'district_of_birth') String? districtOfBirth,
      @JsonKey(name: 'division_of_birth') dynamic divisionOfBirth,
      @JsonKey(name: 'location_of_birth') dynamic locationOfBirth,
      @JsonKey(name: 'date_of_birth') String? dateOfBirth,
      @JsonKey(name: 'mug_shot') dynamic mugShot,
      Gender? gender,
      Nationality? nationality});

  $GenderCopyWith<$Res>? get gender;
  $NationalityCopyWith<$Res>? get nationality;
}

/// @nodoc
class _$IprsPersonCopyWithImpl<$Res, $Val extends IprsPerson>
    implements $IprsPersonCopyWith<$Res> {
  _$IprsPersonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? idNo = freezed,
    Object? passportNo = freezed,
    Object? firstName = freezed,
    Object? middleName = freezed,
    Object? lastName = freezed,
    Object? countyOfBirth = freezed,
    Object? districtOfBirth = freezed,
    Object? divisionOfBirth = freezed,
    Object? locationOfBirth = freezed,
    Object? dateOfBirth = freezed,
    Object? mugShot = freezed,
    Object? gender = freezed,
    Object? nationality = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      idNo: freezed == idNo
          ? _value.idNo
          : idNo // ignore: cast_nullable_to_non_nullable
              as String?,
      passportNo: freezed == passportNo
          ? _value.passportNo
          : passportNo // ignore: cast_nullable_to_non_nullable
              as dynamic,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      countyOfBirth: freezed == countyOfBirth
          ? _value.countyOfBirth
          : countyOfBirth // ignore: cast_nullable_to_non_nullable
              as dynamic,
      districtOfBirth: freezed == districtOfBirth
          ? _value.districtOfBirth
          : districtOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      divisionOfBirth: freezed == divisionOfBirth
          ? _value.divisionOfBirth
          : divisionOfBirth // ignore: cast_nullable_to_non_nullable
              as dynamic,
      locationOfBirth: freezed == locationOfBirth
          ? _value.locationOfBirth
          : locationOfBirth // ignore: cast_nullable_to_non_nullable
              as dynamic,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      mugShot: freezed == mugShot
          ? _value.mugShot
          : mugShot // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      nationality: freezed == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as Nationality?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GenderCopyWith<$Res>? get gender {
    if (_value.gender == null) {
      return null;
    }

    return $GenderCopyWith<$Res>(_value.gender!, (value) {
      return _then(_value.copyWith(gender: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NationalityCopyWith<$Res>? get nationality {
    if (_value.nationality == null) {
      return null;
    }

    return $NationalityCopyWith<$Res>(_value.nationality!, (value) {
      return _then(_value.copyWith(nationality: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$IprsPersonImplCopyWith<$Res>
    implements $IprsPersonCopyWith<$Res> {
  factory _$$IprsPersonImplCopyWith(
          _$IprsPersonImpl value, $Res Function(_$IprsPersonImpl) then) =
      __$$IprsPersonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'id_no') String? idNo,
      @JsonKey(name: 'passport_no') dynamic passportNo,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'middle_name') String? middleName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'county_of_birth') dynamic countyOfBirth,
      @JsonKey(name: 'district_of_birth') String? districtOfBirth,
      @JsonKey(name: 'division_of_birth') dynamic divisionOfBirth,
      @JsonKey(name: 'location_of_birth') dynamic locationOfBirth,
      @JsonKey(name: 'date_of_birth') String? dateOfBirth,
      @JsonKey(name: 'mug_shot') dynamic mugShot,
      Gender? gender,
      Nationality? nationality});

  @override
  $GenderCopyWith<$Res>? get gender;
  @override
  $NationalityCopyWith<$Res>? get nationality;
}

/// @nodoc
class __$$IprsPersonImplCopyWithImpl<$Res>
    extends _$IprsPersonCopyWithImpl<$Res, _$IprsPersonImpl>
    implements _$$IprsPersonImplCopyWith<$Res> {
  __$$IprsPersonImplCopyWithImpl(
      _$IprsPersonImpl _value, $Res Function(_$IprsPersonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? idNo = freezed,
    Object? passportNo = freezed,
    Object? firstName = freezed,
    Object? middleName = freezed,
    Object? lastName = freezed,
    Object? countyOfBirth = freezed,
    Object? districtOfBirth = freezed,
    Object? divisionOfBirth = freezed,
    Object? locationOfBirth = freezed,
    Object? dateOfBirth = freezed,
    Object? mugShot = freezed,
    Object? gender = freezed,
    Object? nationality = freezed,
  }) {
    return _then(_$IprsPersonImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      idNo: freezed == idNo
          ? _value.idNo
          : idNo // ignore: cast_nullable_to_non_nullable
              as String?,
      passportNo: freezed == passportNo
          ? _value.passportNo
          : passportNo // ignore: cast_nullable_to_non_nullable
              as dynamic,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      countyOfBirth: freezed == countyOfBirth
          ? _value.countyOfBirth
          : countyOfBirth // ignore: cast_nullable_to_non_nullable
              as dynamic,
      districtOfBirth: freezed == districtOfBirth
          ? _value.districtOfBirth
          : districtOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      divisionOfBirth: freezed == divisionOfBirth
          ? _value.divisionOfBirth
          : divisionOfBirth // ignore: cast_nullable_to_non_nullable
              as dynamic,
      locationOfBirth: freezed == locationOfBirth
          ? _value.locationOfBirth
          : locationOfBirth // ignore: cast_nullable_to_non_nullable
              as dynamic,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      mugShot: freezed == mugShot
          ? _value.mugShot
          : mugShot // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      nationality: freezed == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as Nationality?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IprsPersonImpl implements _IprsPerson {
  _$IprsPersonImpl(
      {this.id,
      @JsonKey(name: 'id_no') this.idNo,
      @JsonKey(name: 'passport_no') this.passportNo,
      @JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'middle_name') this.middleName,
      @JsonKey(name: 'last_name') this.lastName,
      @JsonKey(name: 'county_of_birth') this.countyOfBirth,
      @JsonKey(name: 'district_of_birth') this.districtOfBirth,
      @JsonKey(name: 'division_of_birth') this.divisionOfBirth,
      @JsonKey(name: 'location_of_birth') this.locationOfBirth,
      @JsonKey(name: 'date_of_birth') this.dateOfBirth,
      @JsonKey(name: 'mug_shot') this.mugShot,
      this.gender,
      this.nationality});

  factory _$IprsPersonImpl.fromJson(Map<String, dynamic> json) =>
      _$$IprsPersonImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'id_no')
  final String? idNo;
  @override
  @JsonKey(name: 'passport_no')
  final dynamic passportNo;
  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'middle_name')
  final String? middleName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  @JsonKey(name: 'county_of_birth')
  final dynamic countyOfBirth;
  @override
  @JsonKey(name: 'district_of_birth')
  final String? districtOfBirth;
  @override
  @JsonKey(name: 'division_of_birth')
  final dynamic divisionOfBirth;
  @override
  @JsonKey(name: 'location_of_birth')
  final dynamic locationOfBirth;
  @override
  @JsonKey(name: 'date_of_birth')
  final String? dateOfBirth;
  @override
  @JsonKey(name: 'mug_shot')
  final dynamic mugShot;
  @override
  final Gender? gender;
  @override
  final Nationality? nationality;

  @override
  String toString() {
    return 'IprsPerson(id: $id, idNo: $idNo, passportNo: $passportNo, firstName: $firstName, middleName: $middleName, lastName: $lastName, countyOfBirth: $countyOfBirth, districtOfBirth: $districtOfBirth, divisionOfBirth: $divisionOfBirth, locationOfBirth: $locationOfBirth, dateOfBirth: $dateOfBirth, mugShot: $mugShot, gender: $gender, nationality: $nationality)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IprsPersonImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.idNo, idNo) || other.idNo == idNo) &&
            const DeepCollectionEquality()
                .equals(other.passportNo, passportNo) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.middleName, middleName) ||
                other.middleName == middleName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            const DeepCollectionEquality()
                .equals(other.countyOfBirth, countyOfBirth) &&
            (identical(other.districtOfBirth, districtOfBirth) ||
                other.districtOfBirth == districtOfBirth) &&
            const DeepCollectionEquality()
                .equals(other.divisionOfBirth, divisionOfBirth) &&
            const DeepCollectionEquality()
                .equals(other.locationOfBirth, locationOfBirth) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            const DeepCollectionEquality().equals(other.mugShot, mugShot) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.nationality, nationality) ||
                other.nationality == nationality));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      idNo,
      const DeepCollectionEquality().hash(passportNo),
      firstName,
      middleName,
      lastName,
      const DeepCollectionEquality().hash(countyOfBirth),
      districtOfBirth,
      const DeepCollectionEquality().hash(divisionOfBirth),
      const DeepCollectionEquality().hash(locationOfBirth),
      dateOfBirth,
      const DeepCollectionEquality().hash(mugShot),
      gender,
      nationality);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IprsPersonImplCopyWith<_$IprsPersonImpl> get copyWith =>
      __$$IprsPersonImplCopyWithImpl<_$IprsPersonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IprsPersonImplToJson(
      this,
    );
  }
}

abstract class _IprsPerson implements IprsPerson {
  factory _IprsPerson(
      {final int? id,
      @JsonKey(name: 'id_no') final String? idNo,
      @JsonKey(name: 'passport_no') final dynamic passportNo,
      @JsonKey(name: 'first_name') final String? firstName,
      @JsonKey(name: 'middle_name') final String? middleName,
      @JsonKey(name: 'last_name') final String? lastName,
      @JsonKey(name: 'county_of_birth') final dynamic countyOfBirth,
      @JsonKey(name: 'district_of_birth') final String? districtOfBirth,
      @JsonKey(name: 'division_of_birth') final dynamic divisionOfBirth,
      @JsonKey(name: 'location_of_birth') final dynamic locationOfBirth,
      @JsonKey(name: 'date_of_birth') final String? dateOfBirth,
      @JsonKey(name: 'mug_shot') final dynamic mugShot,
      final Gender? gender,
      final Nationality? nationality}) = _$IprsPersonImpl;

  factory _IprsPerson.fromJson(Map<String, dynamic> json) =
      _$IprsPersonImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'id_no')
  String? get idNo;
  @override
  @JsonKey(name: 'passport_no')
  dynamic get passportNo;
  @override
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @JsonKey(name: 'middle_name')
  String? get middleName;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  @JsonKey(name: 'county_of_birth')
  dynamic get countyOfBirth;
  @override
  @JsonKey(name: 'district_of_birth')
  String? get districtOfBirth;
  @override
  @JsonKey(name: 'division_of_birth')
  dynamic get divisionOfBirth;
  @override
  @JsonKey(name: 'location_of_birth')
  dynamic get locationOfBirth;
  @override
  @JsonKey(name: 'date_of_birth')
  String? get dateOfBirth;
  @override
  @JsonKey(name: 'mug_shot')
  dynamic get mugShot;
  @override
  Gender? get gender;
  @override
  Nationality? get nationality;
  @override
  @JsonKey(ignore: true)
  _$$IprsPersonImplCopyWith<_$IprsPersonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
