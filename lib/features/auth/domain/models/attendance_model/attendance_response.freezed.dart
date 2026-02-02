// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AttendanceResponse _$AttendanceResponseFromJson(Map<String, dynamic> json) {
  return _AttendanceResponse.fromJson(json);
}

/// @nodoc
mixin _$AttendanceResponse {
  String? get message => throw _privateConstructorUsedError;
  TodayAttendance? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendanceResponseCopyWith<AttendanceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceResponseCopyWith<$Res> {
  factory $AttendanceResponseCopyWith(
          AttendanceResponse value, $Res Function(AttendanceResponse) then) =
      _$AttendanceResponseCopyWithImpl<$Res, AttendanceResponse>;
  @useResult
  $Res call({String? message, TodayAttendance? data});

  $TodayAttendanceCopyWith<$Res>? get data;
}

/// @nodoc
class _$AttendanceResponseCopyWithImpl<$Res, $Val extends AttendanceResponse>
    implements $AttendanceResponseCopyWith<$Res> {
  _$AttendanceResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TodayAttendance?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TodayAttendanceCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $TodayAttendanceCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AttendanceResponseImplCopyWith<$Res>
    implements $AttendanceResponseCopyWith<$Res> {
  factory _$$AttendanceResponseImplCopyWith(_$AttendanceResponseImpl value,
          $Res Function(_$AttendanceResponseImpl) then) =
      __$$AttendanceResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, TodayAttendance? data});

  @override
  $TodayAttendanceCopyWith<$Res>? get data;
}

/// @nodoc
class __$$AttendanceResponseImplCopyWithImpl<$Res>
    extends _$AttendanceResponseCopyWithImpl<$Res, _$AttendanceResponseImpl>
    implements _$$AttendanceResponseImplCopyWith<$Res> {
  __$$AttendanceResponseImplCopyWithImpl(_$AttendanceResponseImpl _value,
      $Res Function(_$AttendanceResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$AttendanceResponseImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TodayAttendance?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendanceResponseImpl implements _AttendanceResponse {
  _$AttendanceResponseImpl({this.message, this.data});

  factory _$AttendanceResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendanceResponseImplFromJson(json);

  @override
  final String? message;
  @override
  final TodayAttendance? data;

  @override
  String toString() {
    return 'AttendanceResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceResponseImplCopyWith<_$AttendanceResponseImpl> get copyWith =>
      __$$AttendanceResponseImplCopyWithImpl<_$AttendanceResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceResponseImplToJson(
      this,
    );
  }
}

abstract class _AttendanceResponse implements AttendanceResponse {
  factory _AttendanceResponse(
      {final String? message,
      final TodayAttendance? data}) = _$AttendanceResponseImpl;

  factory _AttendanceResponse.fromJson(Map<String, dynamic> json) =
      _$AttendanceResponseImpl.fromJson;

  @override
  String? get message;
  @override
  TodayAttendance? get data;
  @override
  @JsonKey(ignore: true)
  _$$AttendanceResponseImplCopyWith<_$AttendanceResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AttendanceHistoryResponse _$AttendanceHistoryResponseFromJson(
    Map<String, dynamic> json) {
  return _AttendanceHistoryResponse.fromJson(json);
}

/// @nodoc
mixin _$AttendanceHistoryResponse {
  String? get message => throw _privateConstructorUsedError;
  List<AttendanceHistoryItem>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendanceHistoryResponseCopyWith<AttendanceHistoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceHistoryResponseCopyWith<$Res> {
  factory $AttendanceHistoryResponseCopyWith(AttendanceHistoryResponse value,
          $Res Function(AttendanceHistoryResponse) then) =
      _$AttendanceHistoryResponseCopyWithImpl<$Res, AttendanceHistoryResponse>;
  @useResult
  $Res call({String? message, List<AttendanceHistoryItem>? data});
}

/// @nodoc
class _$AttendanceHistoryResponseCopyWithImpl<$Res,
        $Val extends AttendanceHistoryResponse>
    implements $AttendanceHistoryResponseCopyWith<$Res> {
  _$AttendanceHistoryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AttendanceHistoryItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttendanceHistoryResponseImplCopyWith<$Res>
    implements $AttendanceHistoryResponseCopyWith<$Res> {
  factory _$$AttendanceHistoryResponseImplCopyWith(
          _$AttendanceHistoryResponseImpl value,
          $Res Function(_$AttendanceHistoryResponseImpl) then) =
      __$$AttendanceHistoryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, List<AttendanceHistoryItem>? data});
}

/// @nodoc
class __$$AttendanceHistoryResponseImplCopyWithImpl<$Res>
    extends _$AttendanceHistoryResponseCopyWithImpl<$Res,
        _$AttendanceHistoryResponseImpl>
    implements _$$AttendanceHistoryResponseImplCopyWith<$Res> {
  __$$AttendanceHistoryResponseImplCopyWithImpl(
      _$AttendanceHistoryResponseImpl _value,
      $Res Function(_$AttendanceHistoryResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$AttendanceHistoryResponseImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AttendanceHistoryItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendanceHistoryResponseImpl implements _AttendanceHistoryResponse {
  _$AttendanceHistoryResponseImpl(
      {this.message, final List<AttendanceHistoryItem>? data})
      : _data = data;

  factory _$AttendanceHistoryResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendanceHistoryResponseImplFromJson(json);

  @override
  final String? message;
  final List<AttendanceHistoryItem>? _data;
  @override
  List<AttendanceHistoryItem>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AttendanceHistoryResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceHistoryResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceHistoryResponseImplCopyWith<_$AttendanceHistoryResponseImpl>
      get copyWith => __$$AttendanceHistoryResponseImplCopyWithImpl<
          _$AttendanceHistoryResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceHistoryResponseImplToJson(
      this,
    );
  }
}

abstract class _AttendanceHistoryResponse implements AttendanceHistoryResponse {
  factory _AttendanceHistoryResponse(
          {final String? message, final List<AttendanceHistoryItem>? data}) =
      _$AttendanceHistoryResponseImpl;

  factory _AttendanceHistoryResponse.fromJson(Map<String, dynamic> json) =
      _$AttendanceHistoryResponseImpl.fromJson;

  @override
  String? get message;
  @override
  List<AttendanceHistoryItem>? get data;
  @override
  @JsonKey(ignore: true)
  _$$AttendanceHistoryResponseImplCopyWith<_$AttendanceHistoryResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AttendanceHistoryItem _$AttendanceHistoryItemFromJson(
    Map<String, dynamic> json) {
  return _AttendanceHistoryItem.fromJson(json);
}

/// @nodoc
mixin _$AttendanceHistoryItem {
  int? get id => throw _privateConstructorUsedError;
  int? get officerId => throw _privateConstructorUsedError;
  DateTime? get checkInTime => throw _privateConstructorUsedError;
  DateTime? get checkOutTime => throw _privateConstructorUsedError;
  DateTime? get attendanceDate => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendanceHistoryItemCopyWith<AttendanceHistoryItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceHistoryItemCopyWith<$Res> {
  factory $AttendanceHistoryItemCopyWith(AttendanceHistoryItem value,
          $Res Function(AttendanceHistoryItem) then) =
      _$AttendanceHistoryItemCopyWithImpl<$Res, AttendanceHistoryItem>;
  @useResult
  $Res call(
      {int? id,
      int? officerId,
      DateTime? checkInTime,
      DateTime? checkOutTime,
      DateTime? attendanceDate,
      String? status,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$AttendanceHistoryItemCopyWithImpl<$Res,
        $Val extends AttendanceHistoryItem>
    implements $AttendanceHistoryItemCopyWith<$Res> {
  _$AttendanceHistoryItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? officerId = freezed,
    Object? checkInTime = freezed,
    Object? checkOutTime = freezed,
    Object? attendanceDate = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      officerId: freezed == officerId
          ? _value.officerId
          : officerId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttendanceHistoryItemImplCopyWith<$Res>
    implements $AttendanceHistoryItemCopyWith<$Res> {
  factory _$$AttendanceHistoryItemImplCopyWith(
          _$AttendanceHistoryItemImpl value,
          $Res Function(_$AttendanceHistoryItemImpl) then) =
      __$$AttendanceHistoryItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? officerId,
      DateTime? checkInTime,
      DateTime? checkOutTime,
      DateTime? attendanceDate,
      String? status,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$AttendanceHistoryItemImplCopyWithImpl<$Res>
    extends _$AttendanceHistoryItemCopyWithImpl<$Res,
        _$AttendanceHistoryItemImpl>
    implements _$$AttendanceHistoryItemImplCopyWith<$Res> {
  __$$AttendanceHistoryItemImplCopyWithImpl(_$AttendanceHistoryItemImpl _value,
      $Res Function(_$AttendanceHistoryItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? officerId = freezed,
    Object? checkInTime = freezed,
    Object? checkOutTime = freezed,
    Object? attendanceDate = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$AttendanceHistoryItemImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      officerId: freezed == officerId
          ? _value.officerId
          : officerId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendanceHistoryItemImpl implements _AttendanceHistoryItem {
  _$AttendanceHistoryItemImpl(
      {this.id,
      this.officerId,
      this.checkInTime,
      this.checkOutTime,
      this.attendanceDate,
      this.status,
      this.createdAt,
      this.updatedAt});

  factory _$AttendanceHistoryItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendanceHistoryItemImplFromJson(json);

  @override
  final int? id;
  @override
  final int? officerId;
  @override
  final DateTime? checkInTime;
  @override
  final DateTime? checkOutTime;
  @override
  final DateTime? attendanceDate;
  @override
  final String? status;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'AttendanceHistoryItem(id: $id, officerId: $officerId, checkInTime: $checkInTime, checkOutTime: $checkOutTime, attendanceDate: $attendanceDate, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceHistoryItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.officerId, officerId) ||
                other.officerId == officerId) &&
            (identical(other.checkInTime, checkInTime) ||
                other.checkInTime == checkInTime) &&
            (identical(other.checkOutTime, checkOutTime) ||
                other.checkOutTime == checkOutTime) &&
            (identical(other.attendanceDate, attendanceDate) ||
                other.attendanceDate == attendanceDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, officerId, checkInTime,
      checkOutTime, attendanceDate, status, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceHistoryItemImplCopyWith<_$AttendanceHistoryItemImpl>
      get copyWith => __$$AttendanceHistoryItemImplCopyWithImpl<
          _$AttendanceHistoryItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceHistoryItemImplToJson(
      this,
    );
  }
}

abstract class _AttendanceHistoryItem implements AttendanceHistoryItem {
  factory _AttendanceHistoryItem(
      {final int? id,
      final int? officerId,
      final DateTime? checkInTime,
      final DateTime? checkOutTime,
      final DateTime? attendanceDate,
      final String? status,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$AttendanceHistoryItemImpl;

  factory _AttendanceHistoryItem.fromJson(Map<String, dynamic> json) =
      _$AttendanceHistoryItemImpl.fromJson;

  @override
  int? get id;
  @override
  int? get officerId;
  @override
  DateTime? get checkInTime;
  @override
  DateTime? get checkOutTime;
  @override
  DateTime? get attendanceDate;
  @override
  String? get status;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$AttendanceHistoryItemImplCopyWith<_$AttendanceHistoryItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}
