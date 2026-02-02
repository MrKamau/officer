import 'package:bloc/bloc.dart';
import 'package:officer/features/auth/domain/di/auth_di.dart';
import 'package:officer/features/auth/presentation/state/auth_cubit.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nested/nested.dart';

// import '../../../feature/evidence/domain/dependecy_injection/evidence_module_injector.dart';
// import '../../../feature/evidence/presentation/state/cubit/evidence_cubit.dart';
// import '../../../feature/occurence/presentation/state/event_cubit.dart';
// import '../../../feature/onboarding/domain/dependency_injection/onboarding_module_injector.dart';
// import '../../../feature/onboarding/presentation/state/cubit/onboarding_cubit.dart';

// List<BlocProviderSingleChildWidget> providers = [
List<SingleChildWidget> providers = [
  BlocProvider<AuthCubit>(
    create: (context) => AuthModuleInjector.resolve!<AuthCubit>(),
  ),
  // BlocProvider<OnboardingCubit>(
  //     create: (context) =>
  //         OnboardingModuleInjector.resolve!<OnboardingCubit>()),
  // BlocProvider<EvidenceCubit>(
  //     create: (context) => EvidenceModuleInjector.resolve!<EvidenceCubit>()),
  // BlocProvider<EventCubit>(
  //   create: (context) => EventCubit(),
  // ),
];
