// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'today_attendance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TodayAttendance _$TodayAttendanceFromJson(Map<String, dynamic> json) {
  return _TodayAttendance.fromJson(json);
}

/// @nodoc
mixin _$TodayAttendance {
  bool? get hasCheckedIn => throw _privateConstructorUsedError;
  bool? get hasCheckedOut => throw _privateConstructorUsedError;
  DateTime? get checkInTime => throw _privateConstructorUsedError;
  DateTime? get checkOutTime => throw _privateConstructorUsedError;
  DateTime? get attendanceDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodayAttendanceCopyWith<TodayAttendance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodayAttendanceCopyWith<$Res> {
  factory $TodayAttendanceCopyWith(
          TodayAttendance value, $Res Function(TodayAttendance) then) =
      _$TodayAttendanceCopyWithImpl<$Res, TodayAttendance>;
  @useResult
  $Res call(
      {bool? hasCheckedIn,
      bool? hasCheckedOut,
      DateTime? checkInTime,
      DateTime? checkOutTime,
      DateTime? attendanceDate});
}

/// @nodoc
class _$TodayAttendanceCopyWithImpl<$Res, $Val extends TodayAttendance>
    implements $TodayAttendanceCopyWith<$Res> {
  _$TodayAttendanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasCheckedIn = freezed,
    Object? hasCheckedOut = freezed,
    Object? checkInTime = freezed,
    Object? checkOutTime = freezed,
    Object? attendanceDate = freezed,
  }) {
    return _then(_value.copyWith(
      hasCheckedIn: freezed == hasCheckedIn
          ? _value.hasCheckedIn
          : hasCheckedIn // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasCheckedOut: freezed == hasCheckedOut
          ? _value.hasCheckedOut
          : hasCheckedOut // ignore: cast_nullable_to_non_nullable
              as bool?,
      checkInTime: freezed == checkInTime
          ? _value.checkInTime
          : checkInTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      checkOutTime: freezed == checkOutTime
          ? _value.checkOutTime
          : checkOutTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      attendanceDate: freezed == attendanceDate
          ? _value.attendanceDate
          : attendanceDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodayAttendanceImplCopyWith<$Res>
    implements $TodayAttendanceCopyWith<$Res> {
  factory _$$TodayAttendanceImplCopyWith(_$TodayAttendanceImpl value,
          $Res Function(_$TodayAttendanceImpl) then) =
      __$$TodayAttendanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? hasCheckedIn,
      bool? hasCheckedOut,
      DateTime? checkInTime,
      DateTime? checkOutTime,
      DateTime? attendanceDate});
}

/// @nodoc
class __$$TodayAttendanceImplCopyWithImpl<$Res>
    extends _$TodayAttendanceCopyWithImpl<$Res, _$TodayAttendanceImpl>
    implements _$$TodayAttendanceImplCopyWith<$Res> {
  __$$TodayAttendanceImplCopyWithImpl(
      _$TodayAttendanceImpl _value, $Res Function(_$TodayAttendanceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasCheckedIn = freezed,
    Object? hasCheckedOut = freezed,
    Object? checkInTime = freezed,
    Object? checkOutTime = freezed,
    Object? attendanceDate = freezed,
  }) {
    return _then(_$TodayAttendanceImpl(
      hasCheckedIn: freezed == hasCheckedIn
          ? _value.hasCheckedIn
          : hasCheckedIn // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasCheckedOut: freezed == hasCheckedOut
          ? _value.hasCheckedOut
          : hasCheckedOut // ignore: cast_nullable_to_non_nullable
              as bool?,
      checkInTime: freezed == checkInTime
          ? _value.checkInTime
          : checkInTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      checkOutTime: freezed == checkOutTime
          ? _value.checkOutTime
          : checkOutTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      attendanceDate: freezed == attendanceDate
          ? _value.attendanceDate
          : attendanceDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodayAttendanceImpl implements _TodayAttendance {
  _$TodayAttendanceImpl(
      {this.hasCheckedIn,
      this.hasCheckedOut,
      this.checkInTime,
      this.checkOutTime,
      this.attendanceDate});

  factory _$TodayAttendanceImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodayAttendanceImplFromJson(json);

  @override
  final bool? hasCheckedIn;
  @override
  final bool? hasCheckedOut;
  @override
  final DateTime? checkInTime;
  @override
  final DateTime? checkOutTime;
  @override
  final DateTime? attendanceDate;

  @override
  String toString() {
    return 'TodayAttendance(hasCheckedIn: $hasCheckedIn, hasCheckedOut: $hasCheckedOut, checkInTime: $checkInTime, checkOutTime: $checkOutTime, attendanceDate: $attendanceDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodayAttendanceImpl &&
            (identical(other.hasCheckedIn, hasCheckedIn) ||
                other.hasCheckedIn == hasCheckedIn) &&
            (identical(other.hasCheckedOut, hasCheckedOut) ||
                other.hasCheckedOut == hasCheckedOut) &&
            (identical(other.checkInTime, checkInTime) ||
                other.checkInTime == checkInTime) &&
            (identical(other.checkOutTime, checkOutTime) ||
                other.checkOutTime == checkOutTime) &&
            (identical(other.attendanceDate, attendanceDate) ||
                other.attendanceDate == attendanceDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, hasCheckedIn, hasCheckedOut,
      checkInTime, checkOutTime, attendanceDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodayAttendanceImplCopyWith<_$TodayAttendanceImpl> get copyWith =>
      __$$TodayAttendanceImplCopyWithImpl<_$TodayAttendanceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodayAttendanceImplToJson(
      this,
    );
  }
}

abstract class _TodayAttendance implements TodayAttendance {
  factory _TodayAttendance(
      {final bool? hasCheckedIn,
      final bool? hasCheckedOut,
      final DateTime? checkInTime,
      final DateTime? checkOutTime,
      final DateTime? attendanceDate}) = _$TodayAttendanceImpl;

  factory _TodayAttendance.fromJson(Map<String, dynamic> json) =
      _$TodayAttendanceImpl.fromJson;

  @override
  bool? get hasCheckedIn;
  @override
  bool? get hasCheckedOut;
  @override
  DateTime? get checkInTime;
  @override
  DateTime? get checkOutTime;
  @override
  DateTime? get attendanceDate;
  @override
  @JsonKey(ignore: true)
  _$$TodayAttendanceImplCopyWith<_$TodayAttendanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
