import 'package:officer/features/auth/domain/di/auth_di.dart';
import 'package:officer/features/auth/presentation/state/auth_cubit.dart';
// import 'package:officer/features/form/domain/di/form_di.dart';
// import 'package:officer/features/form/state/form_cubit.dart';
// import 'package:officer/features/homepage/domain/di/home_di.dart';
// import 'package:officer/features/homepage/presentation/state/home_cubit.dart';
// import 'package:officer/features/homepage/presentation/state/ob_cubit.dart';
// import 'package:officer/features/ocs_actions/domain/di/di.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:officer/features/ocs_actions/pages/state/officer/officer_cubit.dart';
import 'package:nested/nested.dart';

List<SingleChildWidget> registerBlocs = [
  BlocProvider<AuthCubit>(
      create: (context) => AuthModuleInjector.resolve!<AuthCubit>()),
  // BlocProvider<HomeCubit>(
  //     create: (context) => HomeModuleInjector.resolve!<HomeCubit>()),
  // BlocProvider<FormCubit>(
  //     create: (context) => FormModuleInjector.resolve!<FormCubit>()),
  // BlocProvider<OfficerCubit>(
  //     create: (context) => OCSActionsModuleInjector.resolve!<OfficerCubit>()),
  // BlocProvider<ObCubit>(
  //     create: (context) => HomeModuleInjector.resolve!<ObCubit>()),
];
