import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:officer/core/utilities/logging_utils.dart';

/// Service for handling Firebase Cloud Messaging (FCM)
class FCMService {
  static FirebaseMessaging? _messaging;
  static String? _fcmToken;

  /// Initialize Firebase and FCM
  static Future<void> initialize() async {
    try {
      // Initialize Firebase if not already initialized
      if (Firebase.apps.isEmpty) {
        await Firebase.initializeApp();
        logger.i('Firebase initialized successfully');
      }

      // Initialize Firebase Messaging
      _messaging = FirebaseMessaging.instance;

      // Request notification permissions
      await _requestPermissions();

      // Get FCM token
      await getFCMToken();

      // Listen for token refresh
      _messaging!.onTokenRefresh.listen((newToken) {
        logger.i('FCM token refreshed: $newToken');
        _fcmToken = newToken;
      });

      // Handle foreground messages
      FirebaseMessaging.onMessage.listen((RemoteMessage message) {
        _logIncomingNotification(message, 'FOREGROUND');
      });

      // Handle background messages (when app is in background)
      FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
        _logIncomingNotification(message, 'BACKGROUND_OPENED');
      });

      logger.i('FCM service initialized successfully');
    } catch (e) {
      logger.e('Error initializing FCM service: $e');
      rethrow;
    }
  }

  /// Request notification permissions
  static Future<void> _requestPermissions() async {
    try {
      final NotificationSettings settings = await _messaging!.requestPermission(
        alert: true,
        announcement: false,
        badge: true,
        carPlay: false,
        criticalAlert: false,
        provisional: false,
        sound: true,
      );

      logger.i('Notification permission status: ${settings.authorizationStatus}');
      
      if (settings.authorizationStatus == AuthorizationStatus.authorized) {
        logger.i('User granted notification permission');
      } else if (settings.authorizationStatus == AuthorizationStatus.provisional) {
        logger.i('User granted provisional notification permission');
      } else {
        logger.w('User denied or has not granted notification permission');
      }
    } catch (e) {
      logger.e('Error requesting notification permissions: $e');
    }
  }

  /// Get FCM token
  static Future<String?> getFCMToken() async {
    try {
      if (_messaging == null) {
        await initialize();
      }

      _fcmToken = await _messaging!.getToken();
      
      if (_fcmToken != null) {
        logger.i('FCM token retrieved: $_fcmToken');
      } else {
        logger.w('FCM token is null');
      }

      return _fcmToken;
    } catch (e) {
      logger.e('Error getting FCM token: $e');
      return null;
    }
  }

  /// Get cached FCM token (if already retrieved)
  static String? getCachedToken() {
    return _fcmToken;
  }

  /// Delete FCM token (for logout scenarios)
  static Future<void> deleteToken() async {
    try {
      if (_messaging != null) {
        await _messaging!.deleteToken();
        _fcmToken = null;
        logger.i('FCM token deleted');
      }
    } catch (e) {
      logger.e('Error deleting FCM token: $e');
    }
  }

  /// Subscribe to a topic
  static Future<void> subscribeToTopic(String topic) async {
    try {
      if (_messaging != null) {
        await _messaging!.subscribeToTopic(topic);
        logger.i('Subscribed to topic: $topic');
      }
    } catch (e) {
      logger.e('Error subscribing to topic $topic: $e');
    }
  }

  /// Unsubscribe from a topic
  static Future<void> unsubscribeFromTopic(String topic) async {
    try {
      if (_messaging != null) {
        await _messaging!.unsubscribeFromTopic(topic);
        logger.i('Unsubscribed from topic: $topic');
      }
    } catch (e) {
      logger.e('Error unsubscribing from topic $topic: $e');
    }
  }

  /// Log incoming notification with detailed information
  static void _logIncomingNotification(RemoteMessage message, String type) {
    logger.i('═══════════════════════════════════════════════════════');
    logger.i('📱 INCOMING NOTIFICATION - $type');
    logger.i('═══════════════════════════════════════════════════════');
    logger.i('Message ID: ${message.messageId ?? "N/A"}');
    logger.i('Message Type: $type');
    logger.i('Timestamp: ${DateTime.now().toIso8601String()}');
    logger.i('───────────────────────────────────────────────────────');
    
    // Notification details
    if (message.notification != null) {
      logger.i('📢 NOTIFICATION DETAILS:');
      logger.i('  Title: ${message.notification?.title ?? "N/A"}');
      logger.i('  Body: ${message.notification?.body ?? "N/A"}');
      logger.i('  Android Channel ID: ${message.notification?.android?.channelId ?? "N/A"}');
      logger.i('  Android Priority: ${message.notification?.android?.priority ?? "N/A"}');
      logger.i('  iOS Badge: ${message.notification?.apple?.badge ?? "N/A"}');
      logger.i('  Sound: ${message.notification?.android?.sound ?? message.notification?.apple?.sound ?? "N/A"}');
    } else {
      logger.i('📢 NOTIFICATION DETAILS: None (data-only message)');
    }
    
    // Message data
    if (message.data.isNotEmpty) {
      logger.i('📦 MESSAGE DATA:');
      message.data.forEach((key, value) {
        logger.i('  $key: $value');
      });
    } else {
      logger.i('📦 MESSAGE DATA: Empty');
    }
    
    // Additional message properties
    logger.i('───────────────────────────────────────────────────────');
    logger.i('📋 ADDITIONAL INFO:');
    logger.i('  From: ${message.from ?? "N/A"}');
    logger.i('  Sent Time: ${message.sentTime?.toIso8601String() ?? "N/A"}');
    logger.i('  Collapse Key: ${message.collapseKey ?? "N/A"}');
    logger.i('  Message Type: ${message.messageType ?? "N/A"}');
    logger.i('  TTL: ${message.ttl ?? "N/A"}');
    logger.i('═══════════════════════════════════════════════════════');
  }
}

/// Background message handler (must be top-level function)
@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  
  // Log background notification
  logger.i('═══════════════════════════════════════════════════════');
  logger.i('📱 INCOMING NOTIFICATION - BACKGROUND (TERMINATED)');
  logger.i('═══════════════════════════════════════════════════════');
  logger.i('Message ID: ${message.messageId ?? "N/A"}');
  logger.i('Timestamp: ${DateTime.now().toIso8601String()}');
  logger.i('───────────────────────────────────────────────────────');
  
  // Notification details
  if (message.notification != null) {
    logger.i('📢 NOTIFICATION DETAILS:');
    logger.i('  Title: ${message.notification?.title ?? "N/A"}');
    logger.i('  Body: ${message.notification?.body ?? "N/A"}');
    logger.i('  Android Channel ID: ${message.notification?.android?.channelId ?? "N/A"}');
  } else {
    logger.i('📢 NOTIFICATION DETAILS: None (data-only message)');
  }
  
  // Message data
  if (message.data.isNotEmpty) {
    logger.i('📦 MESSAGE DATA:');
    message.data.forEach((key, value) {
      logger.i('  $key: $value');
    });
  } else {
    logger.i('📦 MESSAGE DATA: Empty');
  }
  
  logger.i('═══════════════════════════════════════════════════════');
}

