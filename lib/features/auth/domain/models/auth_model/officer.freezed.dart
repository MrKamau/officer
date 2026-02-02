// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'officer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Officer _$OfficerFromJson(Map<String, dynamic> json) {
  return _Officer.fromJson(json);
}

/// @nodoc
mixin _$Officer {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_number')
  String? get serviceNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_temporary_password')
  bool? get isTemporaryPassword => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  Rank? get rank => throw _privateConstructorUsedError;
  @JsonKey(name: 'badge_no')
  String? get badgeNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_of_birth')
  String? get dateOfBirth => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'contact_info')
  String? get contactInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'emergency_contact_info')
  String? get emergencyContactInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'iPRS_PersonId')
  int? get iPrsPersonId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  dynamic get wardId => throw _privateConstructorUsedError;
  int? get stationId => throw _privateConstructorUsedError;
  Iprs? get iprs => throw _privateConstructorUsedError;
  @JsonKey(name: 'Designation')
  List<Designation>? get designation => throw _privateConstructorUsedError;
  Station? get station => throw _privateConstructorUsedError;
  Role? get role => throw _privateConstructorUsedError;
  TodayAttendance? get todayAttendance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfficerCopyWith<Officer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfficerCopyWith<$Res> {
  factory $OfficerCopyWith(Officer value, $Res Function(Officer) then) =
      _$OfficerCopyWithImpl<$Res, Officer>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'service_number') String? serviceNumber,
      @JsonKey(name: 'is_temporary_password') bool? isTemporaryPassword,
      String? email,
      Rank? rank,
      @JsonKey(name: 'badge_no') String? badgeNo,
      @JsonKey(name: 'date_of_birth') String? dateOfBirth,
      String? gender,
      @JsonKey(name: 'contact_info') String? contactInfo,
      @JsonKey(name: 'emergency_contact_info') String? emergencyContactInfo,
      @JsonKey(name: 'iPRS_PersonId') int? iPrsPersonId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      dynamic wardId,
      int? stationId,
      Iprs? iprs,
      @JsonKey(name: 'Designation') List<Designation>? designation,
      Station? station,
      Role? role,
      TodayAttendance? todayAttendance});

  $RankCopyWith<$Res>? get rank;
  $IprsCopyWith<$Res>? get iprs;
  $StationCopyWith<$Res>? get station;
  $RoleCopyWith<$Res>? get role;
  $TodayAttendanceCopyWith<$Res>? get todayAttendance;
}

/// @nodoc
class _$OfficerCopyWithImpl<$Res, $Val extends Officer>
    implements $OfficerCopyWith<$Res> {
  _$OfficerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? serviceNumber = freezed,
    Object? isTemporaryPassword = freezed,
    Object? email = freezed,
    Object? rank = freezed,
    Object? badgeNo = freezed,
    Object? dateOfBirth = freezed,
    Object? gender = freezed,
    Object? contactInfo = freezed,
    Object? emergencyContactInfo = freezed,
    Object? iPrsPersonId = freezed,
    Object? createdAt = freezed,
    Object? wardId = freezed,
    Object? stationId = freezed,
    Object? iprs = freezed,
    Object? designation = freezed,
    Object? station = freezed,
    Object? role = freezed,
    Object? todayAttendance = freezed,
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
      serviceNumber: freezed == serviceNumber
          ? _value.serviceNumber
          : serviceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      isTemporaryPassword: freezed == isTemporaryPassword
          ? _value.isTemporaryPassword
          : isTemporaryPassword // ignore: cast_nullable_to_non_nullable
              as bool?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      rank: freezed == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as Rank?,
      badgeNo: freezed == badgeNo
          ? _value.badgeNo
          : badgeNo // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      contactInfo: freezed == contactInfo
          ? _value.contactInfo
          : contactInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      emergencyContactInfo: freezed == emergencyContactInfo
          ? _value.emergencyContactInfo
          : emergencyContactInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      iPrsPersonId: freezed == iPrsPersonId
          ? _value.iPrsPersonId
          : iPrsPersonId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      wardId: freezed == wardId
          ? _value.wardId
          : wardId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      stationId: freezed == stationId
          ? _value.stationId
          : stationId // ignore: cast_nullable_to_non_nullable
              as int?,
      iprs: freezed == iprs
          ? _value.iprs
          : iprs // ignore: cast_nullable_to_non_nullable
              as Iprs?,
      designation: freezed == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as List<Designation>?,
      station: freezed == station
          ? _value.station
          : station // ignore: cast_nullable_to_non_nullable
              as Station?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role?,
      todayAttendance: freezed == todayAttendance
          ? _value.todayAttendance
          : todayAttendance // ignore: cast_nullable_to_non_nullable
              as TodayAttendance?,
    ) as $Val);
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
  $IprsCopyWith<$Res>? get iprs {
    if (_value.iprs == null) {
      return null;
    }

    return $IprsCopyWith<$Res>(_value.iprs!, (value) {
      return _then(_value.copyWith(iprs: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StationCopyWith<$Res>? get station {
    if (_value.station == null) {
      return null;
    }

    return $StationCopyWith<$Res>(_value.station!, (value) {
      return _then(_value.copyWith(station: value) as $Val);
    });
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

  @override
  @pragma('vm:prefer-inline')
  $TodayAttendanceCopyWith<$Res>? get todayAttendance {
    if (_value.todayAttendance == null) {
      return null;
    }

    return $TodayAttendanceCopyWith<$Res>(_value.todayAttendance!, (value) {
      return _then(_value.copyWith(todayAttendance: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OfficerImplCopyWith<$Res> implements $OfficerCopyWith<$Res> {
  factory _$$OfficerImplCopyWith(
          _$OfficerImpl value, $Res Function(_$OfficerImpl) then) =
      __$$OfficerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'service_number') String? serviceNumber,
      @JsonKey(name: 'is_temporary_password') bool? isTemporaryPassword,
      String? email,
      Rank? rank,
      @JsonKey(name: 'badge_no') String? badgeNo,
      @JsonKey(name: 'date_of_birth') String? dateOfBirth,
      String? gender,
      @JsonKey(name: 'contact_info') String? contactInfo,
      @JsonKey(name: 'emergency_contact_info') String? emergencyContactInfo,
      @JsonKey(name: 'iPRS_PersonId') int? iPrsPersonId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      dynamic wardId,
      int? stationId,
      Iprs? iprs,
      @JsonKey(name: 'Designation') List<Designation>? designation,
      Station? station,
      Role? role,
      TodayAttendance? todayAttendance});

  @override
  $RankCopyWith<$Res>? get rank;
  @override
  $IprsCopyWith<$Res>? get iprs;
  @override
  $StationCopyWith<$Res>? get station;
  @override
  $RoleCopyWith<$Res>? get role;
  @override
  $TodayAttendanceCopyWith<$Res>? get todayAttendance;
}

/// @nodoc
class __$$OfficerImplCopyWithImpl<$Res>
    extends _$OfficerCopyWithImpl<$Res, _$OfficerImpl>
    implements _$$OfficerImplCopyWith<$Res> {
  __$$OfficerImplCopyWithImpl(
      _$OfficerImpl _value, $Res Function(_$OfficerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? serviceNumber = freezed,
    Object? isTemporaryPassword = freezed,
    Object? email = freezed,
    Object? rank = freezed,
    Object? badgeNo = freezed,
    Object? dateOfBirth = freezed,
    Object? gender = freezed,
    Object? contactInfo = freezed,
    Object? emergencyContactInfo = freezed,
    Object? iPrsPersonId = freezed,
    Object? createdAt = freezed,
    Object? wardId = freezed,
    Object? stationId = freezed,
    Object? iprs = freezed,
    Object? designation = freezed,
    Object? station = freezed,
    Object? role = freezed,
    Object? todayAttendance = freezed,
  }) {
    return _then(_$OfficerImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceNumber: freezed == serviceNumber
          ? _value.serviceNumber
          : serviceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      isTemporaryPassword: freezed == isTemporaryPassword
          ? _value.isTemporaryPassword
          : isTemporaryPassword // ignore: cast_nullable_to_non_nullable
              as bool?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      rank: freezed == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as Rank?,
      badgeNo: freezed == badgeNo
          ? _value.badgeNo
          : badgeNo // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      contactInfo: freezed == contactInfo
          ? _value.contactInfo
          : contactInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      emergencyContactInfo: freezed == emergencyContactInfo
          ? _value.emergencyContactInfo
          : emergencyContactInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      iPrsPersonId: freezed == iPrsPersonId
          ? _value.iPrsPersonId
          : iPrsPersonId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      wardId: freezed == wardId
          ? _value.wardId
          : wardId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      stationId: freezed == stationId
          ? _value.stationId
          : stationId // ignore: cast_nullable_to_non_nullable
              as int?,
      iprs: freezed == iprs
          ? _value.iprs
          : iprs // ignore: cast_nullable_to_non_nullable
              as Iprs?,
      designation: freezed == designation
          ? _value._designation
          : designation // ignore: cast_nullable_to_non_nullable
              as List<Designation>?,
      station: freezed == station
          ? _value.station
          : station // ignore: cast_nullable_to_non_nullable
              as Station?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role?,
      todayAttendance: freezed == todayAttendance
          ? _value.todayAttendance
          : todayAttendance // ignore: cast_nullable_to_non_nullable
              as TodayAttendance?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OfficerImpl implements _Officer {
  _$OfficerImpl(
      {this.id,
      this.name,
      @JsonKey(name: 'service_number') this.serviceNumber,
      @JsonKey(name: 'is_temporary_password') this.isTemporaryPassword,
      this.email,
      this.rank,
      @JsonKey(name: 'badge_no') this.badgeNo,
      @JsonKey(name: 'date_of_birth') this.dateOfBirth,
      this.gender,
      @JsonKey(name: 'contact_info') this.contactInfo,
      @JsonKey(name: 'emergency_contact_info') this.emergencyContactInfo,
      @JsonKey(name: 'iPRS_PersonId') this.iPrsPersonId,
      @JsonKey(name: 'created_at') this.createdAt,
      this.wardId,
      this.stationId,
      this.iprs,
      @JsonKey(name: 'Designation') final List<Designation>? designation,
      this.station,
      this.role,
      this.todayAttendance})
      : _designation = designation;

  factory _$OfficerImpl.fromJson(Map<String, dynamic> json) =>
      _$$OfficerImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  @JsonKey(name: 'service_number')
  final String? serviceNumber;
  @override
  @JsonKey(name: 'is_temporary_password')
  final bool? isTemporaryPassword;
  @override
  final String? email;
  @override
  final Rank? rank;
  @override
  @JsonKey(name: 'badge_no')
  final String? badgeNo;
  @override
  @JsonKey(name: 'date_of_birth')
  final String? dateOfBirth;
  @override
  final String? gender;
  @override
  @JsonKey(name: 'contact_info')
  final String? contactInfo;
  @override
  @JsonKey(name: 'emergency_contact_info')
  final String? emergencyContactInfo;
  @override
  @JsonKey(name: 'iPRS_PersonId')
  final int? iPrsPersonId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  final dynamic wardId;
  @override
  final int? stationId;
  @override
  final Iprs? iprs;
  final List<Designation>? _designation;
  @override
  @JsonKey(name: 'Designation')
  List<Designation>? get designation {
    final value = _designation;
    if (value == null) return null;
    if (_designation is EqualUnmodifiableListView) return _designation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Station? station;
  @override
  final Role? role;
  @override
  final TodayAttendance? todayAttendance;

  @override
  String toString() {
    return 'Officer(id: $id, name: $name, serviceNumber: $serviceNumber, isTemporaryPassword: $isTemporaryPassword, email: $email, rank: $rank, badgeNo: $badgeNo, dateOfBirth: $dateOfBirth, gender: $gender, contactInfo: $contactInfo, emergencyContactInfo: $emergencyContactInfo, iPrsPersonId: $iPrsPersonId, createdAt: $createdAt, wardId: $wardId, stationId: $stationId, iprs: $iprs, designation: $designation, station: $station, role: $role, todayAttendance: $todayAttendance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfficerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.serviceNumber, serviceNumber) ||
                other.serviceNumber == serviceNumber) &&
            (identical(other.isTemporaryPassword, isTemporaryPassword) ||
                other.isTemporaryPassword == isTemporaryPassword) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.badgeNo, badgeNo) || other.badgeNo == badgeNo) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.contactInfo, contactInfo) ||
                other.contactInfo == contactInfo) &&
            (identical(other.emergencyContactInfo, emergencyContactInfo) ||
                other.emergencyContactInfo == emergencyContactInfo) &&
            (identical(other.iPrsPersonId, iPrsPersonId) ||
                other.iPrsPersonId == iPrsPersonId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other.wardId, wardId) &&
            (identical(other.stationId, stationId) ||
                other.stationId == stationId) &&
            (identical(other.iprs, iprs) || other.iprs == iprs) &&
            const DeepCollectionEquality()
                .equals(other._designation, _designation) &&
            (identical(other.station, station) || other.station == station) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.todayAttendance, todayAttendance) ||
                other.todayAttendance == todayAttendance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        serviceNumber,
        isTemporaryPassword,
        email,
        rank,
        badgeNo,
        dateOfBirth,
        gender,
        contactInfo,
        emergencyContactInfo,
        iPrsPersonId,
        createdAt,
        const DeepCollectionEquality().hash(wardId),
        stationId,
        iprs,
        const DeepCollectionEquality().hash(_designation),
        station,
        role,
        todayAttendance
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OfficerImplCopyWith<_$OfficerImpl> get copyWith =>
      __$$OfficerImplCopyWithImpl<_$OfficerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OfficerImplToJson(
      this,
    );
  }
}

abstract class _Officer implements Officer {
  factory _Officer(
      {final int? id,
      final String? name,
      @JsonKey(name: 'service_number') final String? serviceNumber,
      @JsonKey(name: 'is_temporary_password') final bool? isTemporaryPassword,
      final String? email,
      final Rank? rank,
      @JsonKey(name: 'badge_no') final String? badgeNo,
      @JsonKey(name: 'date_of_birth') final String? dateOfBirth,
      final String? gender,
      @JsonKey(name: 'contact_info') final String? contactInfo,
      @JsonKey(name: 'emergency_contact_info')
      final String? emergencyContactInfo,
      @JsonKey(name: 'iPRS_PersonId') final int? iPrsPersonId,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      final dynamic wardId,
      final int? stationId,
      final Iprs? iprs,
      @JsonKey(name: 'Designation') final List<Designation>? designation,
      final Station? station,
      final Role? role,
      final TodayAttendance? todayAttendance}) = _$OfficerImpl;

  factory _Officer.fromJson(Map<String, dynamic> json) = _$OfficerImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(name: 'service_number')
  String? get serviceNumber;
  @override
  @JsonKey(name: 'is_temporary_password')
  bool? get isTemporaryPassword;
  @override
  String? get email;
  @override
  Rank? get rank;
  @override
  @JsonKey(name: 'badge_no')
  String? get badgeNo;
  @override
  @JsonKey(name: 'date_of_birth')
  String? get dateOfBirth;
  @override
  String? get gender;
  @override
  @JsonKey(name: 'contact_info')
  String? get contactInfo;
  @override
  @JsonKey(name: 'emergency_contact_info')
  String? get emergencyContactInfo;
  @override
  @JsonKey(name: 'iPRS_PersonId')
  int? get iPrsPersonId;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  dynamic get wardId;
  @override
  int? get stationId;
  @override
  Iprs? get iprs;
  @override
  @JsonKey(name: 'Designation')
  List<Designation>? get designation;
  @override
  Station? get station;
  @override
  Role? get role;
  @override
  TodayAttendance? get todayAttendance;
  @override
  @JsonKey(ignore: true)
  _$$OfficerImplCopyWith<_$OfficerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
