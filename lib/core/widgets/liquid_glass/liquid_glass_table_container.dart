import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:officer/theme/colors.dart';

/// A specialized container for tables with liquid glass effect and responsive scrolling
/// 
/// Automatically switches between horizontal/vertical scroll based on screen width.
/// Includes centering logic with maxWidth constraints.
class LiquidGlassTableContainer extends StatelessWidget {
  /// The table widget to display (typically a DataTable)
  final Widget child;

  /// Maximum width for the container (default: 1400 for desktop, 600 for mobile)
  final double? maxWidth;

  /// Padding inside the container
  final EdgeInsetsGeometry? padding;

  /// Border radius for the container
  final double? borderRadius;

  /// Blur intensity (sigmaX and sigmaY)
  final double? blur;

  /// Whether to enable horizontal scrolling on smaller screens
  final bool enableHorizontalScroll;

  /// Minimum width for the table (prevents table from being too narrow)
  final double? minWidth;

  const LiquidGlassTableContainer({
    super.key,
    required this.child,
    this.maxWidth,
    this.padding,
    this.borderRadius,
    this.blur,
    this.enableHorizontalScroll = true,
    this.minWidth,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < LiquidGlassTheme.tabletBreakpoint;
    final effectiveMaxWidth = maxWidth ?? (isMobile ? LiquidGlassTheme.maxWidthMobile : LiquidGlassTheme.maxWidthDesktop);
    final effectiveBorderRadius = borderRadius ?? LiquidGlassTheme.borderRadiusStandard;
    final effectiveBlur = blur ?? LiquidGlassTheme.blurStandard;
    final effectivePadding = padding ?? const EdgeInsets.all(16.0);
    final needsHorizontalScroll = enableHorizontalScroll && screenWidth < LiquidGlassTheme.tableBreakpoint;

    Widget tableContent = ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: minWidth ?? (needsHorizontalScroll ? 1000 : 0),
      ),
      child: child,
    );

    if (needsHorizontalScroll) {
      tableContent = SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: tableContent,
      );
    }

    Widget container = Container(
      padding: effectivePadding,
      decoration: BoxDecoration(
        gradient: LiquidGlassTheme.standardGradient,
        borderRadius: BorderRadius.circular(effectiveBorderRadius),
        border: Border.all(
          color: Colors.white.withOpacity(LiquidGlassTheme.borderOpacity),
          width: LiquidGlassTheme.borderWidth,
        ),
        boxShadow: LiquidGlassTheme.standardShadows,
      ),
      child: tableContent,
    );

    container = ClipRRect(
      borderRadius: BorderRadius.circular(effectiveBorderRadius),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: effectiveBlur, sigmaY: effectiveBlur),
        child: container,
      ),
    );

    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: effectiveMaxWidth),
        child: container,
      ),
    );
  }
}

