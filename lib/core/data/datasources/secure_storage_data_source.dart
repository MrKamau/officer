import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:officer/core/utilities/logging_utils.dart';

// ---------------------------------------------------------------------------
// Platform detection
// ---------------------------------------------------------------------------
// flutter_secure_storage has no native channel on desktop / web.
// Detect once at init; fall back to SharedPreferences transparently.
// ---------------------------------------------------------------------------

bool _useSecureStorage = true;
FlutterSecureStorage? _secureStorage;

void initializeSecureStorage() {
  _secureStorage = FlutterSecureStorage(
    aOptions: AndroidOptions(
      encryptedSharedPreferences: true,
    ),
    iOptions: IOSOptions(
      accessibility: KeychainAccessibility.first_unlock,
    ),
  );
  // Assume secure storage works; first real call will flip the flag if not.
  _useSecureStorage = true;
  logger.i('[SecureStorage] Initialized (will auto-fallback on unsupported platforms)');
}

// ---------------------------------------------------------------------------
// Internal: attempt secure storage, fallback to SharedPreferences on
// MissingPluginException (desktop / web).
// ---------------------------------------------------------------------------

Future<void> _writeWithFallback(String key, String value) async {
  if (_useSecureStorage && _secureStorage != null) {
    try {
      await _secureStorage!.write(key: key, value: value);
      logger.i('✅ Secure data stored for key: $key');
      return;
    } on MissingPluginException {
      logger.w('[SecureStorage] Plugin unavailable on this platform — switching to SharedPreferences fallback');
      _useSecureStorage = false;
    }
  }
  // Fallback
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString(key, value);
  logger.i('✅ Data stored (SharedPreferences fallback) for key: $key');
}

Future<String?> _readWithFallback(String key) async {
  if (_useSecureStorage && _secureStorage != null) {
    try {
      final value = await _secureStorage!.read(key: key);
      if (value != null) {
        logger.d('✅ Secure data retrieved for key: $key');
      }
      return value;
    } on MissingPluginException {
      logger.w('[SecureStorage] Plugin unavailable on this platform — switching to SharedPreferences fallback');
      _useSecureStorage = false;
    }
  }
  // Fallback
  final prefs = await SharedPreferences.getInstance();
  return prefs.getString(key);
}

Future<void> _deleteWithFallback(String key) async {
  if (_useSecureStorage && _secureStorage != null) {
    try {
      await _secureStorage!.delete(key: key);
      logger.i('✅ Secure data deleted for key: $key');
      return;
    } on MissingPluginException {
      _useSecureStorage = false;
    }
  }
  final prefs = await SharedPreferences.getInstance();
  await prefs.remove(key);
  logger.i('✅ Data deleted (SharedPreferences fallback) for key: $key');
}

Future<bool> _containsKeyWithFallback(String key) async {
  if (_useSecureStorage && _secureStorage != null) {
    try {
      return await _secureStorage!.containsKey(key: key);
    } on MissingPluginException {
      _useSecureStorage = false;
    }
  }
  final prefs = await SharedPreferences.getInstance();
  return prefs.containsKey(key);
}

Future<void> _deleteAllWithFallback() async {
  if (_useSecureStorage && _secureStorage != null) {
    try {
      await _secureStorage!.deleteAll();
      logger.i('✅ All secure data deleted');
      return;
    } on MissingPluginException {
      _useSecureStorage = false;
    }
  }
  final prefs = await SharedPreferences.getInstance();
  await prefs.clear();
  logger.i('✅ All data cleared (SharedPreferences fallback)');
}

// ---------------------------------------------------------------------------
// Public global helpers (used everywhere in the app)
// ---------------------------------------------------------------------------

/// Store data securely (or via SharedPreferences on desktop/web)
Future<void> storeSecureData(String key, String value) async {
  await _writeWithFallback(key, value);
}

/// Get data securely (or via SharedPreferences on desktop/web)
Future<String?> getSecureData(String key) async {
  return await _readWithFallback(key);
}

/// Delete secure data
Future<void> removeSecureData(String key) async {
  await _deleteWithFallback(key);
}

/// Check if secure key exists
Future<bool> hasSecureData(String key) async {
  return await _containsKeyWithFallback(key);
}

/// Delete all secure data
Future<void> clearAllSecureData() async {
  await _deleteAllWithFallback();
}
