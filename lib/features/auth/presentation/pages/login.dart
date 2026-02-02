import 'dart:developer';
import 'dart:ui';

import 'package:officer/core/data/datasources/local_storage_data_source.dart';
import 'package:officer/core/utilities/app_common_extentions.dart';
import 'package:officer/core/utilities/utilities.dart';
import 'package:officer/features/homepage/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../state/auth_cubit.dart';
import 'syncUserDetails.dart';

class OfficerLogin extends StatefulWidget {
  const OfficerLogin({super.key});

  @override
  State<OfficerLogin> createState() => _OfficerLoginState();
}

class _OfficerLoginState extends State<OfficerLogin> {
  String _username = '';
  String _password = '';
  bool _isVisible = true;

  late LocalStorage localStorage;

  @override
  void initState() {
    super.initState();

    localStorage = LocalStorage();
    localStorage.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final bool isWide = constraints.maxWidth >= 700;

            if (isWide) {
              // Split view: Logo | Sign in form
              return Row(
                children: [
                  // Left: Logo pane
                  Expanded(
                    child: Container(
                      color: const Color(0xFFF7F9FC),
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              width: 320,
                              height: 320,
                              child: Image.asset(
                                'assets/images/nps.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                            const SizedBox(height: 24),
                            const Text(
                              'NATIONAL POLICE SERVICE',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF0F172A),
                                letterSpacing: 1.2,
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              'Command and Control Platform',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF64748B),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // Right: Form pane
                  Expanded(
                    child: Center(
                      child: SingleChildScrollView(
                        padding: const EdgeInsets.symmetric(horizontal: 48.0, vertical: 32.0),
                        child: ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 520),
                          child: _buildFormPane(context, isWide: true),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }

            // Mobile: stacked layout (logo above, form below)
            return Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: 220,
                      height: 220,
                      child: Image.asset(
                        'assets/images/nps.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'NATIONAL POLICE SERVICE',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0F172A),
                        letterSpacing: 1.2,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Command and Control Platform',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF64748B),
                      ),
                    ),
                    const SizedBox(height: 24),
                    _buildFormPane(context, isWide: false),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildFormPane(BuildContext context, {required bool isWide}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const Text(
          'Welcome Back',
          style: TextStyle(
            color: Color(0xFF0F172A),
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        const Text(
          'Sign in to continue',
          style: TextStyle(
            color: Color(0xFF64748B),
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 24),

        // Service Number Field
        TextFormField(
          style: const TextStyle(color: Color(0xFF0F172A)),
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xFFF1F5F9),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
            labelText: 'Service Number',
            labelStyle: const TextStyle(color: Color(0xFF475569)),
            hintText: 'Enter valid service number',
            hintStyle: const TextStyle(color: Color(0xFF94A3B8)),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 18,
            ),
          ),
          onChanged: (value) => _username = value,
        ),

        const SizedBox(height: 16),

        // Password Field
        TextFormField(
          style: const TextStyle(color: Color(0xFF0F172A)),
          obscureText: _isVisible,
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xFFF1F5F9),
            suffixIcon: Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: IconButton(
                onPressed: () => setState(() => _isVisible = !_isVisible),
                icon: Icon(
                  _isVisible ? Icons.visibility_off : Icons.visibility,
                  color: const Color(0xFF64748B),
                ),
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
            labelText: 'Password',
            labelStyle: const TextStyle(color: Color(0xFF475569)),
            hintText: 'Enter secure password',
            hintStyle: const TextStyle(color: Color(0xFF94A3B8)),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 18,
            ),
          ),
          onChanged: (value) => _password = value,
        ),

        const SizedBox(height: 16),

        // Error message display
        context.watch<AuthCubit>().state.maybeWhen(
          error: (payload) {
            final errorMessage = payload?.error;
            if (errorMessage != null && errorMessage.isNotEmpty) {
              return Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFFEF2F2),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: const Color(0xFFFCA5A5),
                    width: 1,
                  ),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.error_outline,
                      color: Color(0xFFDC2626),
                      size: 20,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        errorMessage,
                        style: const TextStyle(
                          color: Color(0xFFDC2626),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }
            return const SizedBox.shrink();
          },
          orElse: () => const SizedBox.shrink(),
        ),

        const SizedBox(height: 24),

        // Login Button
        context.watch<AuthCubit>().state.maybeWhen(
              loading: (payload) => const Center(
                child: Text(
                  'Initializing secure session...',
                  style: TextStyle(
                    color: Color(0xFF0F172A),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              orElse: () => SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _next,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF0F172A),
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 18,
                    ),
                  ),
                  child: const Text(
                    'SIGN IN',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
              ),
            ),
      ],
    );
  }

  _next() async {
    // Contact
    if (_username.isEmpty || _password.isEmpty) {
      // show snackbar
      context.showCustomSnackBar("Please fill in the fields", isError: true);
      return;
    }
    
    // ✅ FIXED: No need for try-catch or manual loading state
    // The AuthCubit handles loading and error states automatically
    await _login(_username, _password);
  }

  _login(String username, String password) async {
    // ✅ FIXED: No need for manual loading state management
    // The AuthCubit handles loading state automatically

    // + https://flutterigniter.com/dismiss-keyboard-form-love-focus/
    FocusScopeNode currentFocus = FocusScope.of(context);

    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }

    Map<String, dynamic> detail = {
      'service_number': username,
      'pass': password
    };
    
    log(detail.toString());
    
    // ✅ FIXED: Use BLoC pattern properly instead of try-catch
    // The AuthCubit will emit states that we can listen to
    final result = await context.read<AuthCubit>().login(detail);

    if (result != null) {
      // Login successful
      if (mounted) {
        await syncUserDetails(context, result);
        if (mounted) {
          context.appNavigatorPushRemoveUntil(const HomePage());
        }
      }
    }
    // If result is null, login failed and error state is already emitted
    // The UI will handle the error state automatically
  }
}
