import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/services.dart';
import 'package:officer/core/utilities/logging_utils.dart';

class DeviceInfoService {
  static const MethodChannel _channel = MethodChannel('device_info');

  /// Gets device serial number
  static Future<String?> getDeviceSerial() async {
    try {
      final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

      if (Platform.isAndroid) {
        final AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
        // Use Android ID, or fallback to serial if available
        final androidId = androidInfo.id;
        if (androidId.isNotEmpty) {
          return androidId;
        }
        // Try to get serial number (requires special permissions on newer Android)
        try {
          return androidInfo.serialNumber.isNotEmpty
              ? androidInfo.serialNumber
              : androidId;
        } catch (_) {
          return androidId.isNotEmpty ? androidId : null;
        }
      } else if (Platform.isIOS) {
        final IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
        return iosInfo.identifierForVendor; // iOS identifier
      }
      return null;
    } catch (e) {
      logger.e('Error getting device serial: $e');
      return null;
    }
  }

  /// Gets device IMEI (Android only, requires READ_PHONE_STATE permission)
  /// Note: device_info_plus doesn't provide IMEI, so we use native method channel
  static Future<String?> getDeviceImei() async {
    try {
      if (Platform.isAndroid) {
        // Note: device_info_plus doesn't provide IMEI, so we use native method channel
        logger.i(
            'Using native method to get IMEI (device_info_plus doesn\'t provide IMEI)...');

        // Use native method channel for IMEI
        try {
          logger.i('Attempting to get IMEI from native method...');
          final dynamic result = await _channel.invokeMethod('getImei');
          logger.i(
              'IMEI method result type: ${result.runtimeType}, value: $result');
          if (result is String &&
              result.isNotEmpty &&
              result != "000000000000000") {
            logger.i('IMEI retrieved successfully: $result');
            return result;
          }
          logger.w('IMEI method returned empty, null, or invalid: $result');
          return null;
        } on PlatformException catch (e) {
          logger.e('PlatformException getting IMEI: ${e.code} - ${e.message}');
          if (e.code == 'UNAVAILABLE') {
            logger.w(
                'IMEI is not available on this device - check READ_PHONE_STATE permission');
          }
          return null;
        } catch (e) {
          logger.e('Error invoking getImei method: $e');
          return null;
        }
      } else if (Platform.isIOS) {
        // iOS doesn't provide IMEI access, use identifierForVendor instead
        final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
        final IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
        return iosInfo.identifierForVendor;
      }
      return null;
    } catch (e) {
      logger.e('Error getting device IMEI: $e');
      return null;
    }
  }

  /// Gets device manufacturer
  static Future<String?> getManufacturer() async {
    try {
      if (Platform.isAndroid) {
        try {
          final dynamic result = await _channel.invokeMethod('getManufacturer');
          if (result is String && result.isNotEmpty && result != "Unknown") {
            return result;
          }
        } catch (e) {
          logger
              .w('Error getting manufacturer from native, using fallback: $e');
        }
        // Fallback to device_info_plus
        final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
        final AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
        return androidInfo.manufacturer;
      }
      return null;
    } catch (e) {
      logger.e('Error getting manufacturer: $e');
      return null;
    }
  }

  /// Gets device model
  static Future<String?> getDeviceModel() async {
    try {
      if (Platform.isAndroid) {
        try {
          final dynamic result = await _channel.invokeMethod('getDeviceModel');
          if (result is String && result.isNotEmpty && result != "Unknown") {
            return result;
          }
        } catch (e) {
          logger
              .w('Error getting device model from native, using fallback: $e');
        }
        // Fallback to device_info_plus
        final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
        final AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
        return androidInfo.model;
      } else if (Platform.isIOS) {
        final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
        final IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
        return iosInfo.model;
      }
      return null;
    } catch (e) {
      logger.e('Error getting device model: $e');
      return null;
    }
  }

  /// Gets device name/model (manufacturer + model)
  static Future<String?> getDeviceName() async {
    try {
      if (Platform.isAndroid) {
        final manufacturer = await getManufacturer();
        final model = await getDeviceModel();
        if (manufacturer != null && model != null) {
          return '$manufacturer $model';
        }
        // Fallback to device_info_plus
        final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
        final AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
        return '${androidInfo.manufacturer} ${androidInfo.model}';
      } else if (Platform.isIOS) {
        final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
        final IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
        return '${iosInfo.name} ${iosInfo.model}';
      }
      return null;
    } catch (e) {
      logger.e('Error getting device name: $e');
      return null;
    }
  }

  /// Gets Android SDK version
  static Future<int?> getSdkInt() async {
    try {
      if (Platform.isAndroid) {
        try {
          final dynamic result = await _channel.invokeMethod('getSdkInt');
          if (result is int) {
            return result;
          }
        } catch (e) {
          logger.w('Error getting SDK int from native: $e');
        }
      }
      return null;
    } catch (e) {
      logger.e('Error getting SDK int: $e');
      return null;
    }
  }

  /// Gets Android release version (e.g., "13", "14")
  static Future<String?> getRelease() async {
    try {
      if (Platform.isAndroid) {
        try {
          final dynamic result = await _channel.invokeMethod('getRelease');
          if (result is String && result.isNotEmpty && result != "Unknown") {
            return result;
          }
        } catch (e) {
          logger.w('Error getting release from native: $e');
        }
      }
      return null;
    } catch (e) {
      logger.e('Error getting release: $e');
      return null;
    }
  }

  /// Gets Android ID directly from native (more reliable)
  static Future<String?> getAndroidId() async {
    try {
      if (Platform.isAndroid) {
        try {
          final dynamic result = await _channel.invokeMethod('getAndroidId');
          if (result is String && result.isNotEmpty && result != "Unknown") {
            return result;
          }
          logger.w('Android ID method returned empty or invalid: $result');
          return null;
        } on PlatformException catch (e) {
          logger.e(
              'PlatformException getting Android ID: ${e.code} - ${e.message}');
          return null;
        } catch (e) {
          logger.e('Error invoking getAndroidId method: $e');
          return null;
        }
      }
      return null;
    } catch (e) {
      logger.e('Error getting Android ID: $e');
      return null;
    }
  }

  /// Gets device ID (for device_id field)
  static Future<String?> getDeviceId() async {
    try {
      if (Platform.isAndroid) {
        // Try native method first (more direct)
        final androidId = await getAndroidId();
        if (androidId != null &&
            androidId.isNotEmpty &&
            androidId != "Unknown") {
          return 'DEV-${androidId.substring(0, androidId.length > 8 ? 8 : androidId.length).toUpperCase()}';
        }
        // Fallback to device_info_plus
        final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
        final AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
        final id = androidInfo.id;
        if (id.isNotEmpty) {
          return 'DEV-${id.substring(0, id.length > 8 ? 8 : id.length).toUpperCase()}';
        }
      } else if (Platform.isIOS) {
        final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
        final IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
        final id = iosInfo.identifierForVendor ?? '';
        if (id.isNotEmpty) {
          return 'DEV-${id.substring(0, id.length > 8 ? 8 : id.length).toUpperCase()}';
        }
      }
      return null;
    } catch (e) {
      logger.e('Error getting device ID: $e');
      return null;
    }
  }

  /// Gets device MAC address
  /// Note: On Android 6.0+, MAC address may be randomized for privacy
  /// On iOS, MAC address access is restricted and will return null
  /// If native method returns "02:00:00:00:00:00" (randomized MAC), tries device_info_plus as fallback
  static Future<String?> getMacAddress() async {
    try {
      if (Platform.isAndroid) {
        String? nativeMacAddress;
        try {
          logger.i('Attempting to get MAC address from native method...');
          final dynamic result = await _channel.invokeMethod('getMacAddress');
          logger.i(
              'MAC address method result type: ${result.runtimeType}, value: $result');
          if (result is String && result.isNotEmpty) {
            nativeMacAddress = result;
            logger.i('MAC address retrieved from native: $nativeMacAddress');

            // If MAC is randomized (02:00:00:00:00:00), try device_info_plus as fallback
            if (nativeMacAddress == "02:00:00:00:00:00") {
              logger.w(
                  'MAC address is randomized (02:00:00:00:00:00), trying device_info_plus...');
              try {
                // Note: device_info_plus doesn't provide MAC address directly,
                // but we can try to get Android ID as an alternative identifier
                final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
                final AndroidDeviceInfo androidInfo =
                    await deviceInfo.androidInfo;
                // Use Android ID as fallback identifier when MAC is randomized
                final androidId = androidInfo.id;
                if (androidId.isNotEmpty) {
                  logger.i(
                      'device_info_plus Android ID available: $androidId (but no MAC address)');
                  // Note: device_info_plus doesn't have MAC, so we return the randomized MAC
                }
              } catch (e) {
                logger.w('Error with device_info_plus fallback: $e');
              }
              // Return the randomized MAC anyway (better than nothing)
              return nativeMacAddress;
            }

            // Valid MAC address found
            return nativeMacAddress;
          }
          logger.w('MAC address method returned empty or null: $result');
        } on PlatformException catch (e) {
          logger.e(
              'PlatformException getting MAC address: ${e.code} - ${e.message}');
          if (e.code == 'UNAVAILABLE') {
            logger.w(
                'MAC address is not available on this device, trying device_info_plus...');
            // Try device_info_plus as fallback when native method is unavailable
            try {
              final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
              final AndroidDeviceInfo androidInfo =
                  await deviceInfo.androidInfo;
              // device_info_plus doesn't provide MAC, but we log the attempt
              logger.w(
                  'device_info_plus doesn\'t provide MAC address, Android ID: ${androidInfo.id}');
            } catch (fallbackError) {
              logger.w('Error with device_info_plus fallback: $fallbackError');
            }
          }
          return null;
        } catch (e) {
          logger.e('Error invoking getMacAddress method: $e');
          return null;
        }
      } else if (Platform.isIOS) {
        // iOS doesn't provide MAC address access due to privacy restrictions
        logger.w('MAC address access is restricted on iOS');
        return null;
      }
      return null;
    } catch (e) {
      logger.e('Error getting device MAC address: $e');
      return null;
    }
  }

  /// Gets device build number
  static Future<String?> getBuildNumber() async {
    try {
      if (Platform.isAndroid) {
        try {
          final dynamic result = await _channel.invokeMethod('getBuildNumber');
          if (result is String && result.isNotEmpty && result != "Unknown") {
            return result;
          }
          logger.w('Build number method returned empty or invalid: $result');
          return null;
        } on PlatformException catch (e) {
          logger.e(
              'PlatformException getting build number: ${e.code} - ${e.message}');
          return null;
        } catch (e) {
          logger.e('Error invoking getBuildNumber method: $e');
          return null;
        }
      } else if (Platform.isIOS) {
        final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
        final IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
        return iosInfo.systemVersion;
      }
      return null;
    } catch (e) {
      logger.e('Error getting device build number: $e');
      return null;
    }
  }

  /// Gets both serial number and IMEI
  static Future<Map<String, String?>> getDeviceInfo() async {
    final serial = await getDeviceSerial();
    final imei = await getDeviceImei();
    final deviceName = await getDeviceName();
    final deviceId = await getDeviceId();
    final macAddress = await getMacAddress();
    final buildNumber = await getBuildNumber();

    // Ensure serial_number is never empty - use device_id as fallback
    final finalSerial = serial?.isNotEmpty == true
        ? serial!
        : (deviceId?.isNotEmpty == true && deviceId != 'DEV-UNKNOWN'
            ? deviceId!
            : 'SN-${DateTime.now().millisecondsSinceEpoch}');

    return {
      'serial_number': finalSerial,
      'imei': imei ?? '',
      'device_name': deviceName ?? 'Unknown Device',
      'device_id': deviceId ?? 'DEV-UNKNOWN',
      'mac_address': macAddress ?? '',
      'build_number': buildNumber ?? '',
    };
  }
}
