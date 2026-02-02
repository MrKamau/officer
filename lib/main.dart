import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:officer/core/config/app_config.dart';
import 'package:officer/core/domain/di/configure_dependencies.dart';
import 'package:officer/features/auth/presentation/state/auth_cubit.dart';
import 'package:officer/features/auth/presentation/pages/login.dart';
import 'package:officer/theme/colors.dart';
import 'package:kiwi/kiwi.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize environment configuration (load .env file)
  await AppConfig.initialize();

  // Initialize dependency injection
  await configureDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthCubit>(
          create: (_) => KiwiContainer().resolve<AuthCubit>(),
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
