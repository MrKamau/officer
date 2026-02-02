import 'package:officer/features/auth/domain/di/auth_di.dart';
import 'core_injector.dart';
 // import 'package:officer/features/form/domain/di/form_di.dart';
// import 'package:officer/features/homepage/domain/di/home_di.dart';
// import 'package:officer/features/ocs_actions/domain/di/di.dart';

Future<void> configureDependencies() async {
  coreInjector().setup();
  authModuleInjector().setup();
  // homeModuleInjector().setup();
  // formModuleInjector().setup();
  // ocsActionsModuleInjector().setup();
  // onboardingModuleInjector().setup();
  // evidenceModuleInjector().setup();
  // occurenceModuleInjector().setup();
  // disasterModuleInjector().setup();
  // minorOffenceModuleInjector().setup();
}
