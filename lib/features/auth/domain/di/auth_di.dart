import 'package:officer/core/data/network_datasource/network_service.dart';
import 'package:officer/features/auth/data/data_source/data.dart';
import 'package:officer/features/auth/data/data_source/device_data_source.dart';
import 'package:officer/features/auth/presentation/state/auth_cubit.dart';
import 'package:kiwi/kiwi.dart';

import '../../data/data_source/data_impl.dart';
import '../../data/repository/repo_impl.dart';
import '../repository/repo.dart';
import '../usecase/login_usecase.dart';
import '../usecase/register_device_usecase.dart';
import '../usecase/check_in_usecase.dart';
import '../usecase/check_out_usecase.dart';
import '../usecase/get_today_attendance_usecase.dart';
import '../usecase/get_attendance_history_usecase.dart';

part 'auth_di.g.dart';

abstract class AuthModuleInjector {
  static KiwiContainer? container;
  // ignore: always_specify_types
  static final resolve = container?.resolve;

  void setup() {
    container = KiwiContainer();
    _$AuthModuleInjector()._configure();
  }

  @Register.factory(AuthRepository, from: AuthRepositoryImpl)
  @Register.factory(AuthDataSource, from: AuthDataSourceImpl)
  @Register.factory(DeviceDataSource, from: DeviceDataSourceImpl)
  @Register.singleton(AuthCubit)
  @Register.singleton(LoginUseCase)
  @Register.singleton(RegisterDeviceUseCase)
  @Register.singleton(CheckInUseCase)
  @Register.singleton(CheckOutUseCase)
  @Register.singleton(GetTodayAttendanceUseCase)
  @Register.singleton(GetAttendanceHistoryUseCase)
  void _configure();
}

AuthModuleInjector authModuleInjector() => _$AuthModuleInjector();
