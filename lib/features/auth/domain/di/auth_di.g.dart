// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_di.dart';

// **************************************************************************
// KiwiInjectorGenerator
// **************************************************************************

class _$AuthModuleInjector extends AuthModuleInjector {
  @override
  void _configure() {
    final KiwiContainer container = KiwiContainer();
    container
      ..registerFactory<AuthRepository>((c) => AuthRepositoryImpl(
          c.resolve<AuthDataSource>(), c.resolve<DeviceDataSource>()))
      ..registerFactory<AuthDataSource>(
          (c) => AuthDataSourceImpl(c.resolve<NetworkService>()))
      ..registerFactory<DeviceDataSource>(
          (c) => DeviceDataSourceImpl(c.resolve<NetworkService>()))
      ..registerSingleton((c) => AuthCubit(
          c.resolve<LoginUseCase>(),
          c.resolve<RegisterDeviceUseCase>(),
          c.resolve<CheckInUseCase>(),
          c.resolve<CheckOutUseCase>(),
          c.resolve<GetTodayAttendanceUseCase>(),
          c.resolve<GetAttendanceHistoryUseCase>(),
          c.resolve<AuthRepository>()))
      ..registerSingleton((c) => LoginUseCase(c.resolve<AuthRepository>()))
      ..registerSingleton(
          (c) => RegisterDeviceUseCase(c.resolve<AuthRepository>()))
      ..registerSingleton((c) => CheckInUseCase(c.resolve<AuthRepository>()))
      ..registerSingleton((c) => CheckOutUseCase(c.resolve<AuthRepository>()))
      ..registerSingleton(
          (c) => GetTodayAttendanceUseCase(c.resolve<AuthRepository>()))
      ..registerSingleton(
          (c) => GetAttendanceHistoryUseCase(c.resolve<AuthRepository>()));
  }
}
