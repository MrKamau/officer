import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:officer/core/config/app_config.dart';
import 'package:officer/core/data/datasources/secure_storage_data_source.dart';
import 'package:officer/core/domain/di/configure_dependencies.dart';
import 'package:officer/features/auth/presentation/state/auth_cubit.dart';
import 'package:officer/features/auth/presentation/pages/login.dart';
import 'package:officer/theme/colors.dart';
import 'package:kiwi/kiwi.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize environment configuration (load .env file)
  await AppConfig.initialize();

  // Initialize secure storage for sensitive data
  initializeSecureStorage();

  // Initialize dependency injection
  await configureDependencies();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final AuthCubit _authCubit;

  @override
  void initState() {
    super.initState();
    _authCubit = KiwiContainer().resolve<AuthCubit>();
    // Register device on app startup (runs silently in background)
    _authCubit.registerDevice();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthCubit>.value(
          value: _authCubit,
        ),
      ],
      child: MaterialApp(
        title: 'Officer App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: primaryNavy),
          useMaterial3: true,
        ),
        home: const OfficerLogin(),
      ),
    );
  }
}
