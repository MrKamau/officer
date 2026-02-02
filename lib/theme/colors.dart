import 'package:flutter/material.dart';

// Primary Brand Colors
const Color deepNavyBlue = Color(0xFF00205B);
const Color darkRed = Color(0xFF990000);

// Default App Theme Colors
const Color appBackgroundDark = Color(0xFF1C2B46); // Main dark blue background
const Color appAppBarWhite = Colors.white; // White AppBar
const Color appCardBright = Color(0xFF3A4A6A); // Bright blue cards
const Color appButtonDarkBlue = Color(0xFF1E3A8A); // Darker blue for buttons

// Background Colors
const Color backgroundWhite = Color(0xFFFFFFFF);

// Card Colors
const Color cardLightGrey = Color(0xFFCCCCCC);

// Text Colors
const Color headerTitleWhite = Color(0xFFFFFFFF);
const Color sectionTitleDeepNavy = Color(0xFF00205B);
const Color fieldLabelDarkGrey = Color(0xFF495057);
const Color fieldValueVeryDarkGrey = Color(0xFF212529);
const Color disclaimerTextMediumGrey = Color(0xFF666666);

// Legacy Colors (keeping for backward compatibility)
const Color textColor = Color.fromARGB(255, 33, 33, 33);
const Color textSecondary = Color(0xFF64748B);
const Color textDark = Color(0xFF334155);
const Color primaryColor = Color.fromARGB(255, 42, 59, 243);
const Color primaryBlue = Color(0xFF2563EB);
const Color secondaryBlue = Color(0xFF1E40AF);
const Color accentBlue = Color(0xFF3B82F6);
const Color backgroundLight = Color(0xFFEEF2F6);
const Color backgroundGray = Color(0xFFF5F7FA);
const Color backgroundCard = Color(0xFFF8FAFC);
const Color cardBorder = Color(0xFFD1D5DB);
const Color iconBackground = Color(0xFFE5E7EB);
const Color inputFillColor = Color(0xFFEBEEF3);
const Color cardColor = Colors.white;
const Color primaryNavy = Color(0xFF1B344E);
const Color secondaryNavy = Color(0xFF0F1D2C);
const Color operationLabel = Color(0xFF94A3B8);

/// Liquid Glass Theme Constants
/// Provides centralized styling constants for liquid glass morphism effects
class LiquidGlassTheme {
  // Gradient Colors - Denim Blue Theme
  static const Color gradientStart = Color(0xFF1E3A5F); // Denim blue start
  static const Color gradientEnd = Color(0xFF3A6B95); // Lighter denim blue end

  // Opacity Values
  static const double gradientStartOpacity = 0.75;
  static const double gradientEndOpacity = 0.65;
  static const double borderOpacity = 0.15;
  static const double shadowDarkOpacity = 0.15;
  static const double shadowLightOpacity = 0.1;

  // Blur Values
  static const double blurStandard = 20.0;
  static const double blurSmall = 10.0;

  // Border Radius
  static const double borderRadiusStandard = 20.0;
  static const double borderRadiusMedium = 16.0;
  static const double borderRadiusSmall = 12.0;
  static const double borderRadiusTiny = 8.0;

  // Border Width
  static const double borderWidth = 1.0;

  // Shadow Configurations
  static BoxShadow get shadowDark => BoxShadow(
        color: Colors.black.withOpacity(shadowDarkOpacity),
        blurRadius: 24,
        offset: const Offset(0, 8),
        spreadRadius: 0,
      );

  static BoxShadow get shadowLight => BoxShadow(
        color: Colors.white.withOpacity(shadowLightOpacity),
        blurRadius: 8,
        offset: const Offset(0, -2),
        spreadRadius: 0,
      );

  static List<BoxShadow> get standardShadows => [shadowDark, shadowLight];

  // Gradient
  static LinearGradient get standardGradient => LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          gradientStart.withOpacity(gradientStartOpacity),
          gradientEnd.withOpacity(gradientEndOpacity),
        ],
      );

  // Responsive Breakpoints
  static const double tableBreakpoint = 1200.0;
  static const double mobileBreakpoint = 640.0;
  static const double tabletBreakpoint = 900.0;

  // Container Constraints
  static const double maxWidthDesktop = 1400.0;
  static const double maxWidthMobile = 600.0;
}
