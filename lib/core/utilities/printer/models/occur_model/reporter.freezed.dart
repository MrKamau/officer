// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reporter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Reporter _$ReporterFromJson(Map<String, dynamic> json) {
  return _Reporter.fromJson(json);
}

/// @nodoc
mixin _$Reporter {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'iprs_person')
  IprsPerson? get iprsPerson => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_address')
  String? get emailAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'county_of_residence')
  String? get countyOfResidence => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_county_of_residence')
  String? get subCountyOfResidence => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReporterCopyWith<Reporter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReporterCopyWith<$Res> {
  factory $ReporterCopyWith(Reporter value, $Res Function(Reporter) then) =
      _$ReporterCopyWithImpl<$Res, Reporter>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'iprs_person') IprsPerson? iprsPerson,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'email_address') String? emailAddress,
      @JsonKey(name: 'county_of_residence') String? countyOfResidence,
      @JsonKey(name: 'sub_county_of_residence') String? subCountyOfResidence});

  $IprsPersonCopyWith<$Res>? get iprsPerson;
}

/// @nodoc
class _$ReporterCopyWithImpl<$Res, $Val extends Reporter>
    implements $ReporterCopyWith<$Res> {
  _$ReporterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? iprsPerson = freezed,
    Object? phoneNumber = freezed,
    Object? emailAddress = freezed,
    Object? countyOfResidence = freezed,
    Object? subCountyOfResidence = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      iprsPerson: freezed == iprsPerson
          ? _value.iprsPerson
          : iprsPerson // ignore: cast_nullable_to_non_nullable
              as IprsPerson?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      emailAddress: freezed == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      countyOfResidence: freezed == countyOfResidence
          ? _value.countyOfResidence
          : countyOfResidence // ignore: cast_nullable_to_non_nullable
              as String?,
      subCountyOfResidence: freezed == subCountyOfResidence
          ? _value.subCountyOfResidence
          : subCountyOfResidence // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
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
}

/// @nodoc
abstract class _$$ReporterImplCopyWith<$Res>
    implements $ReporterCopyWith<$Res> {
  factory _$$ReporterImplCopyWith(
          _$ReporterImpl value, $Res Function(_$ReporterImpl) then) =
      __$$ReporterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'iprs_person') IprsPerson? iprsPerson,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'email_address') String? emailAddress,
      @JsonKey(name: 'county_of_residence') String? countyOfResidence,
      @JsonKey(name: 'sub_county_of_residence') String? subCountyOfResidence});

  @override
  $IprsPersonCopyWith<$Res>? get iprsPerson;
}

/// @nodoc
class __$$ReporterImplCopyWithImpl<$Res>
    extends _$ReporterCopyWithImpl<$Res, _$ReporterImpl>
    implements _$$ReporterImplCopyWith<$Res> {
  __$$ReporterImplCopyWithImpl(
      _$ReporterImpl _value, $Res Function(_$ReporterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? iprsPerson = freezed,
    Object? phoneNumber = freezed,
    Object? emailAddress = freezed,
    Object? countyOfResidence = freezed,
    Object? subCountyOfResidence = freezed,
  }) {
    return _then(_$ReporterImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      iprsPerson: freezed == iprsPerson
          ? _value.iprsPerson
          : iprsPerson // ignore: cast_nullable_to_non_nullable
              as IprsPerson?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      emailAddress: freezed == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      countyOfResidence: freezed == countyOfResidence
          ? _value.countyOfResidence
          : countyOfResidence // ignore: cast_nullable_to_non_nullable
              as String?,
      subCountyOfResidence: freezed == subCountyOfResidence
          ? _value.subCountyOfResidence
          : subCountyOfResidence // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReporterImpl implements _Reporter {
  _$ReporterImpl(
      {this.id,
      @JsonKey(name: 'iprs_person') this.iprsPerson,
      @JsonKey(name: 'phone_number') this.phoneNumber,
      @JsonKey(name: 'email_address') this.emailAddress,
      @JsonKey(name: 'county_of_residence') this.countyOfResidence,
      @JsonKey(name: 'sub_county_of_residence') this.subCountyOfResidence});

  factory _$ReporterImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReporterImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'iprs_person')
  final IprsPerson? iprsPerson;
  @override
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;
  @override
  @JsonKey(name: 'email_address')
  final String? emailAddress;
  @override
  @JsonKey(name: 'county_of_residence')
  final String? countyOfResidence;
  @override
  @JsonKey(name: 'sub_county_of_residence')
  final String? subCountyOfResidence;

  @override
  String toString() {
    return 'Reporter(id: $id, iprsPerson: $iprsPerson, phoneNumber: $phoneNumber, emailAddress: $emailAddress, countyOfResidence: $countyOfResidence, subCountyOfResidence: $subCountyOfResidence)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReporterImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.iprsPerson, iprsPerson) ||
                other.iprsPerson == iprsPerson) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.countyOfResidence, countyOfResidence) ||
                other.countyOfResidence == countyOfResidence) &&
            (identical(other.subCountyOfResidence, subCountyOfResidence) ||
                other.subCountyOfResidence == subCountyOfResidence));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, iprsPerson, phoneNumber,
      emailAddress, countyOfResidence, subCountyOfResidence);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReporterImplCopyWith<_$ReporterImpl> get copyWith =>
      __$$ReporterImplCopyWithImpl<_$ReporterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReporterImplToJson(
      this,
    );
  }
}

abstract class _Reporter implements Reporter {
  factory _Reporter(
      {final int? id,
      @JsonKey(name: 'iprs_person') final IprsPerson? iprsPerson,
      @JsonKey(name: 'phone_number') final String? phoneNumber,
      @JsonKey(name: 'email_address') final String? emailAddress,
      @JsonKey(name: 'county_of_residence') final String? countyOfResidence,
      @JsonKey(name: 'sub_county_of_residence')
      final String? subCountyOfResidence}) = _$ReporterImpl;

  factory _Reporter.fromJson(Map<String, dynamic> json) =
      _$ReporterImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'iprs_person')
  IprsPerson? get iprsPerson;
  @override
  @JsonKey(name: 'phone_number')
  String? get phoneNumber;
  @override
  @JsonKey(name: 'email_address')
  String? get emailAddress;
  @override
  @JsonKey(name: 'county_of_residence')
  String? get countyOfResidence;
  @override
  @JsonKey(name: 'sub_county_of_residence')
  String? get subCountyOfResidence;
  @override
  @JsonKey(ignore: true)
  _$$ReporterImplCopyWith<_$ReporterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
