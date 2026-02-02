import 'package:flutter_dotenv/flutter_dotenv.dart';

/// Application environment configuration
///
/// This class manages all environment-specific configurations for the VPS application.
/// It loads configuration from .env files based on the selected environment (UAT or Dev).
class AppConfig {
  // Private constructor to prevent instantiation
  AppConfig._();

  // Environment type
  static const String _environment = String.fromEnvironment(
    'ENVIRONMENT',
    defaultValue: 'dev',
  );

  /// Initialize the app configuration by loading the appropriate .env file
  ///
  /// Usage:
  /// ```dart
  /// await AppConfig.initialize();
  /// ```
  static Future<void> initialize() async {
    final envFile = _environment == 'uat' ? '.env.uat' : '.env.dev';
    await dotenv.load(fileName: envFile);
  }

  /// Get the current environment name
  static String get environment => _environment;

  /// Check if running in dev
  static bool get isDev => _environment == 'dev';

  /// Check if running in UAT
  static bool get isUAT => _environment == 'uat';

  // ==================== Domain Base URLs ====================

  /// Auth domain base URL
  /// Used for authentication, device registration, and attendance tracking
  static String get authBaseUrl =>
      dotenv.get('AUTH_BASE_URL', fallback: 'https://auth-main.virtualpolicestation.com/api/v1/');

  /// OB (Occurrence Book) domain base URL
  /// Used for occurrence book records, fire register, and lost items
  static String get obBaseUrl =>
      dotenv.get('OB_BASE_URL', fallback: 'https://ob.virtualpolicestation.com/api/v1/');

  /// OCS Actions domain base URL
  /// Used for OCS actions, staff actions, and vehicle management
  static String get ocsActionsBaseUrl =>
      dotenv.get('OCS_ACTIONS_BASE_URL', fallback: 'https://ocs-actions.virtualpolicestation.com/api/v1/');

  /// Staff domain base URL
  /// Used for staff-related operations and submodule data
  static String get staffBaseUrl =>
      dotenv.get('STAFF_BASE_URL', fallback: 'https://main-staff.virtualpolicestation.com/api/v1/');

  /// Forms/Registry domain base URL
  /// Used for dynamic forms and registry operations
  static String get formsBaseUrl =>
      dotenv.get('FORMS_BASE_URL', fallback: 'https://auth-main.virtualpolicestation.com/api/v1/');

  /// Main OB domain base URL
  /// Used for OB reporting data
  static String get mainObBaseUrl =>
      dotenv.get('MAIN_OB_BASE_URL', fallback: 'https://main-ob.virtualpolicestation.com');

  /// Cell Register domain base URL
  /// Used for cell/prisoner data
  static String get cellRegisterBaseUrl =>
      dotenv.get('CELL_REGISTER_BASE_URL', fallback: 'https://cell-register.virtualpolicestation.com');

  /// IPRS domain base URL
  /// Used for Integrated Personnel Response System
  static String get iprsBaseUrl =>
      dotenv.get('IPRS_BASE_URL', fallback: 'https://iprs.virtualpolicestation.com');

  /// Registers domain base URL
  /// Used for various register operations
  static String get registersBaseUrl =>
      dotenv.get('REGISTERS_BASE_URL', fallback: 'https://ob-registers.virtualpolicestation.com');

  /// Cash Bail domain base URL
  /// Used for cash bail operations
  static String get cashBailBaseUrl =>
      dotenv.get('CASHBAIL_BASE_URL', fallback: 'https://ob-cashbail.virtualpolicestation.com');

  // ==================== Additional Configuration ====================

  /// API timeout duration in milliseconds
  static int get apiTimeout =>
      int.tryParse(dotenv.get('API_TIMEOUT', fallback: '30000')) ?? 30000;

  /// Enable debug logging
  static bool get enableDebugLogging =>
      dotenv.get('ENABLE_DEBUG_LOGGING', fallback: 'true').toLowerCase() == 'true';

  /// FCM Server Key (if needed)
  static String get fcmServerKey =>
      dotenv.get('FCM_SERVER_KEY', fallback: '');

  /// Print all configuration values (for debugging)
  static void printConfig() {
    print('========== APP CONFIGURATION ==========');
    print('Environment: $environment');
    print('Auth Base URL: $authBaseUrl');
    print('OB Base URL: $obBaseUrl');
    print('OCS Actions Base URL: $ocsActionsBaseUrl');
    print('Staff Base URL: $staffBaseUrl');
    print('Forms Base URL: $formsBaseUrl');
    print('Main OB Base URL: $mainObBaseUrl');
    print('Cell Register Base URL: $cellRegisterBaseUrl');
    print('IPRS Base URL: $iprsBaseUrl');
    print('Registers Base URL: $registersBaseUrl');
    print('Cash Bail Base URL: $cashBailBaseUrl');
    print('API Timeout: ${apiTimeout}ms');
    print('Debug Logging: $enableDebugLogging');
    print('======================================');
  }
}
