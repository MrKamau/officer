import 'package:flutter/material.dart';
import 'package:officer/theme/colors.dart';

/// A reusable centered container with responsive constraints
/// 
/// Provides consistent centering behavior with configurable maxWidth.
class CenteredContent extends StatelessWidget {
  /// The child widget to center
  final Widget child;

  /// Maximum width for the content (default: 1400 for desktop, 600 for mobile)
  final double? maxWidth;

  /// Padding around the content
  final EdgeInsetsGeometry? padding;

  /// Alignment of the content
  final AlignmentGeometry? alignment;

  const CenteredContent({
    super.key,
    required this.child,
    this.maxWidth,
    this.padding,
    this.alignment,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < LiquidGlassTheme.tabletBreakpoint;
    final effectiveMaxWidth = maxWidth ?? (isMobile ? LiquidGlassTheme.maxWidthMobile : LiquidGlassTheme.maxWidthDesktop);
    final effectivePadding = padding ?? EdgeInsets.zero;
    final effectiveAlignment = alignment ?? Alignment.center;

    return Center(
      child: Container(
        alignment: effectiveAlignment,
        padding: effectivePadding,
        constraints: BoxConstraints(maxWidth: effectiveMaxWidth),
        child: child,
      ),
    );
  }
}

