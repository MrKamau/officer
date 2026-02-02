// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState {
  AuthStatePayload? get payload => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthStatePayload? payload) initial,
    required TResult Function(AuthStatePayload? payload) loading,
    required TResult Function(AuthStatePayload? payload) success,
    required TResult Function(AuthStatePayload? payload) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthStatePayload? payload)? initial,
    TResult? Function(AuthStatePayload? payload)? loading,
    TResult? Function(AuthStatePayload? payload)? success,
    TResult? Function(AuthStatePayload? payload)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthStatePayload? payload)? initial,
    TResult Function(AuthStatePayload? payload)? loading,
    TResult Function(AuthStatePayload? payload)? success,
    TResult Function(AuthStatePayload? payload)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({AuthStatePayload? payload});

  $AuthStatePayloadCopyWith<$Res>? get payload;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = freezed,
  }) {
    return _then(_value.copyWith(
      payload: freezed == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as AuthStatePayload?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthStatePayloadCopyWith<$Res>? get payload {
    if (_value.payload == null) {
      return null;
    }

    return $AuthStatePayloadCopyWith<$Res>(_value.payload!, (value) {
      return _then(_value.copyWith(payload: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$InitialStateImplCopyWith(
          _$InitialStateImpl value, $Res Function(_$InitialStateImpl) then) =
      __$$InitialStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthStatePayload? payload});

  @override
  $AuthStatePayloadCopyWith<$Res>? get payload;
}

/// @nodoc
class __$$InitialStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialStateImpl>
    implements _$$InitialStateImplCopyWith<$Res> {
  __$$InitialStateImplCopyWithImpl(
      _$InitialStateImpl _value, $Res Function(_$InitialStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = freezed,
  }) {
    return _then(_$InitialStateImpl(
      payload: freezed == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as AuthStatePayload?,
    ));
  }
}

/// @nodoc

class _$InitialStateImpl implements _InitialState {
  const _$InitialStateImpl({this.payload});

  @override
  final AuthStatePayload? payload;

  @override
  String toString() {
    return 'AuthState.initial(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialStateImpl &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialStateImplCopyWith<_$InitialStateImpl> get copyWith =>
      __$$InitialStateImplCopyWithImpl<_$InitialStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthStatePayload? payload) initial,
    required TResult Function(AuthStatePayload? payload) loading,
    required TResult Function(AuthStatePayload? payload) success,
    required TResult Function(AuthStatePayload? payload) error,
  }) {
    return initial(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthStatePayload? payload)? initial,
    TResult? Function(AuthStatePayload? payload)? loading,
    TResult? Function(AuthStatePayload? payload)? success,
    TResult? Function(AuthStatePayload? payload)? error,
  }) {
    return initial?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthStatePayload? payload)? initial,
    TResult Function(AuthStatePayload? payload)? loading,
    TResult Function(AuthStatePayload? payload)? success,
    TResult Function(AuthStatePayload? payload)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_ErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements AuthState {
  const factory _InitialState({final AuthStatePayload? payload}) =
      _$InitialStateImpl;

  @override
  AuthStatePayload? get payload;
  @override
  @JsonKey(ignore: true)
  _$$InitialStateImplCopyWith<_$InitialStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthStatePayload? payload});

  @override
  $AuthStatePayloadCopyWith<$Res>? get payload;
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = freezed,
  }) {
    return _then(_$LoadingStateImpl(
      payload: freezed == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as AuthStatePayload?,
    ));
  }
}

/// @nodoc

class _$LoadingStateImpl implements _LoadingState {
  const _$LoadingStateImpl({this.payload});

  @override
  final AuthStatePayload? payload;

  @override
  String toString() {
    return 'AuthState.loading(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingStateImpl &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingStateImplCopyWith<_$LoadingStateImpl> get copyWith =>
      __$$LoadingStateImplCopyWithImpl<_$LoadingStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthStatePayload? payload) initial,
    required TResult Function(AuthStatePayload? payload) loading,
    required TResult Function(AuthStatePayload? payload) success,
    required TResult Function(AuthStatePayload? payload) error,
  }) {
    return loading(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthStatePayload? payload)? initial,
    TResult? Function(AuthStatePayload? payload)? loading,
    TResult? Function(AuthStatePayload? payload)? success,
    TResult? Function(AuthStatePayload? payload)? error,
  }) {
    return loading?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthStatePayload? payload)? initial,
    TResult Function(AuthStatePayload? payload)? loading,
    TResult Function(AuthStatePayload? payload)? success,
    TResult Function(AuthStatePayload? payload)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_ErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements AuthState {
  const factory _LoadingState({final AuthStatePayload? payload}) =
      _$LoadingStateImpl;

  @override
  AuthStatePayload? get payload;
  @override
  @JsonKey(ignore: true)
  _$$LoadingStateImplCopyWith<_$LoadingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$SuccessStateImplCopyWith(
          _$SuccessStateImpl value, $Res Function(_$SuccessStateImpl) then) =
      __$$SuccessStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthStatePayload? payload});

  @override
  $AuthStatePayloadCopyWith<$Res>? get payload;
}

/// @nodoc
class __$$SuccessStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SuccessStateImpl>
    implements _$$SuccessStateImplCopyWith<$Res> {
  __$$SuccessStateImplCopyWithImpl(
      _$SuccessStateImpl _value, $Res Function(_$SuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = freezed,
  }) {
    return _then(_$SuccessStateImpl(
      payload: freezed == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as AuthStatePayload?,
    ));
  }
}

/// @nodoc

class _$SuccessStateImpl implements _SuccessState {
  const _$SuccessStateImpl({this.payload});

  @override
  final AuthStatePayload? payload;

  @override
  String toString() {
    return 'AuthState.success(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessStateImpl &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessStateImplCopyWith<_$SuccessStateImpl> get copyWith =>
      __$$SuccessStateImplCopyWithImpl<_$SuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthStatePayload? payload) initial,
    required TResult Function(AuthStatePayload? payload) loading,
    required TResult Function(AuthStatePayload? payload) success,
    required TResult Function(AuthStatePayload? payload) error,
  }) {
    return success(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthStatePayload? payload)? initial,
    TResult? Function(AuthStatePayload? payload)? loading,
    TResult? Function(AuthStatePayload? payload)? success,
    TResult? Function(AuthStatePayload? payload)? error,
  }) {
    return success?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthStatePayload? payload)? initial,
    TResult Function(AuthStatePayload? payload)? loading,
    TResult Function(AuthStatePayload? payload)? success,
    TResult Function(AuthStatePayload? payload)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ErrorState value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_ErrorState value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SuccessState implements AuthState {
  const factory _SuccessState({final AuthStatePayload? payload}) =
      _$SuccessStateImpl;

  @override
  AuthStatePayload? get payload;
  @override
  @JsonKey(ignore: true)
  _$$SuccessStateImplCopyWith<_$SuccessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$ErrorStateImplCopyWith(
          _$ErrorStateImpl value, $Res Function(_$ErrorStateImpl) then) =
      __$$ErrorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthStatePayload? payload});

  @override
  $AuthStatePayloadCopyWith<$Res>? get payload;
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = freezed,
  }) {
    return _then(_$ErrorStateImpl(
      payload: freezed == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as AuthStatePayload?,
    ));
  }
}

/// @nodoc

class _$ErrorStateImpl implements _ErrorState {
  const _$ErrorStateImpl({this.payload});

  @override
  final AuthStatePayload? payload;

  @override
  String toString() {
    return 'AuthState.error(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorStateImpl &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      __$$ErrorStateImplCopyWithImpl<_$ErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthStatePayload? payload) initial,
    required TResult Function(AuthStatePayload? payload) loading,
    required TResult Function(AuthStatePayload? payload) success,
    required TResult Function(AuthStatePayload? payload) error,
  }) {
    return error(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthStatePayload? payload)? initial,
    TResult? Function(AuthStatePayload? payload)? loading,
    TResult? Function(AuthStatePayload? payload)? success,
    TResult? Function(AuthStatePayload? payload)? error,
  }) {
    return error?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthStatePayload? payload)? initial,
    TResult Function(AuthStatePayload? payload)? loading,
    TResult Function(AuthStatePayload? payload)? success,
    TResult Function(AuthStatePayload? payload)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_ErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements AuthState {
  const factory _ErrorState({final AuthStatePayload? payload}) =
      _$ErrorStateImpl;

  @override
  AuthStatePayload? get payload;
  @override
  @JsonKey(ignore: true)
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthStatePayload _$AuthStatePayloadFromJson(Map<String, dynamic> json) {
  return _AuthStatePayload.fromJson(json);
}

/// @nodoc
mixin _$AuthStatePayload {
  String? get error => throw _privateConstructorUsedError;
  AuthModel? get authData => throw _privateConstructorUsedError;
  TodayAttendance? get todayAttendance => throw _privateConstructorUsedError;
  List<AttendanceHistoryItem>? get attendanceHistory =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthStatePayloadCopyWith<AuthStatePayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStatePayloadCopyWith<$Res> {
  factory $AuthStatePayloadCopyWith(
          AuthStatePayload value, $Res Function(AuthStatePayload) then) =
      _$AuthStatePayloadCopyWithImpl<$Res, AuthStatePayload>;
  @useResult
  $Res call(
      {String? error,
      AuthModel? authData,
      TodayAttendance? todayAttendance,
      List<AttendanceHistoryItem>? attendanceHistory});

  $AuthModelCopyWith<$Res>? get authData;
  $TodayAttendanceCopyWith<$Res>? get todayAttendance;
}

/// @nodoc
class _$AuthStatePayloadCopyWithImpl<$Res, $Val extends AuthStatePayload>
    implements $AuthStatePayloadCopyWith<$Res> {
  _$AuthStatePayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? authData = freezed,
    Object? todayAttendance = freezed,
    Object? attendanceHistory = freezed,
  }) {
    return _then(_value.copyWith(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      authData: freezed == authData
          ? _value.authData
          : authData // ignore: cast_nullable_to_non_nullable
              as AuthModel?,
      todayAttendance: freezed == todayAttendance
          ? _value.todayAttendance
          : todayAttendance // ignore: cast_nullable_to_non_nullable
              as TodayAttendance?,
      attendanceHistory: freezed == attendanceHistory
          ? _value.attendanceHistory
          : attendanceHistory // ignore: cast_nullable_to_non_nullable
              as List<AttendanceHistoryItem>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthModelCopyWith<$Res>? get authData {
    if (_value.authData == null) {
      return null;
    }

    return $AuthModelCopyWith<$Res>(_value.authData!, (value) {
      return _then(_value.copyWith(authData: value) as $Val);
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
abstract class _$$AuthStatePayloadImplCopyWith<$Res>
    implements $AuthStatePayloadCopyWith<$Res> {
  factory _$$AuthStatePayloadImplCopyWith(_$AuthStatePayloadImpl value,
          $Res Function(_$AuthStatePayloadImpl) then) =
      __$$AuthStatePayloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? error,
      AuthModel? authData,
      TodayAttendance? todayAttendance,
      List<AttendanceHistoryItem>? attendanceHistory});

  @override
  $AuthModelCopyWith<$Res>? get authData;
  @override
  $TodayAttendanceCopyWith<$Res>? get todayAttendance;
}

/// @nodoc
class __$$AuthStatePayloadImplCopyWithImpl<$Res>
    extends _$AuthStatePayloadCopyWithImpl<$Res, _$AuthStatePayloadImpl>
    implements _$$AuthStatePayloadImplCopyWith<$Res> {
  __$$AuthStatePayloadImplCopyWithImpl(_$AuthStatePayloadImpl _value,
      $Res Function(_$AuthStatePayloadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? authData = freezed,
    Object? todayAttendance = freezed,
    Object? attendanceHistory = freezed,
  }) {
    return _then(_$AuthStatePayloadImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      authData: freezed == authData
          ? _value.authData
          : authData // ignore: cast_nullable_to_non_nullable
              as AuthModel?,
      todayAttendance: freezed == todayAttendance
          ? _value.todayAttendance
          : todayAttendance // ignore: cast_nullable_to_non_nullable
              as TodayAttendance?,
      attendanceHistory: freezed == attendanceHistory
          ? _value._attendanceHistory
          : attendanceHistory // ignore: cast_nullable_to_non_nullable
              as List<AttendanceHistoryItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthStatePayloadImpl implements _AuthStatePayload {
  const _$AuthStatePayloadImpl(
      {this.error,
      this.authData,
      this.todayAttendance,
      final List<AttendanceHistoryItem>? attendanceHistory})
      : _attendanceHistory = attendanceHistory;

  factory _$AuthStatePayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthStatePayloadImplFromJson(json);

  @override
  final String? error;
  @override
  final AuthModel? authData;
  @override
  final TodayAttendance? todayAttendance;
  final List<AttendanceHistoryItem>? _attendanceHistory;
  @override
  List<AttendanceHistoryItem>? get attendanceHistory {
    final value = _attendanceHistory;
    if (value == null) return null;
    if (_attendanceHistory is EqualUnmodifiableListView)
      return _attendanceHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AuthStatePayload(error: $error, authData: $authData, todayAttendance: $todayAttendance, attendanceHistory: $attendanceHistory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStatePayloadImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.authData, authData) ||
                other.authData == authData) &&
            (identical(other.todayAttendance, todayAttendance) ||
                other.todayAttendance == todayAttendance) &&
            const DeepCollectionEquality()
                .equals(other._attendanceHistory, _attendanceHistory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error, authData, todayAttendance,
      const DeepCollectionEquality().hash(_attendanceHistory));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStatePayloadImplCopyWith<_$AuthStatePayloadImpl> get copyWith =>
      __$$AuthStatePayloadImplCopyWithImpl<_$AuthStatePayloadImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthStatePayloadImplToJson(
      this,
    );
  }
}

abstract class _AuthStatePayload implements AuthStatePayload {
  const factory _AuthStatePayload(
          {final String? error,
          final AuthModel? authData,
          final TodayAttendance? todayAttendance,
          final List<AttendanceHistoryItem>? attendanceHistory}) =
      _$AuthStatePayloadImpl;

  factory _AuthStatePayload.fromJson(Map<String, dynamic> json) =
      _$AuthStatePayloadImpl.fromJson;

  @override
  String? get error;
  @override
  AuthModel? get authData;
  @override
  TodayAttendance? get todayAttendance;
  @override
  List<AttendanceHistoryItem>? get attendanceHistory;
  @override
  @JsonKey(ignore: true)
  _$$AuthStatePayloadImplCopyWith<_$AuthStatePayloadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
