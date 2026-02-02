part of 'auth_cubit.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initial({AuthStatePayload? payload}) = _InitialState;
  const factory AuthState.loading({AuthStatePayload? payload}) = _LoadingState;
  const factory AuthState.success({AuthStatePayload? payload}) = _SuccessState;
  const factory AuthState.error({AuthStatePayload? payload}) = _ErrorState;
}

@freezed
abstract class AuthStatePayload with _$AuthStatePayload {
  const factory AuthStatePayload({
    @required String? error,
    AuthModel? authData,
    TodayAttendance? todayAttendance,
    List<AttendanceHistoryItem>? attendanceHistory,
  }) = _AuthStatePayload;

  factory AuthStatePayload.fromJson(Map<String, dynamic> json) =>
      _$AuthStatePayloadFromJson(json);
}
