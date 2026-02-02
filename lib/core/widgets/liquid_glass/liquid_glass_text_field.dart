import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:officer/theme/colors.dart';

/// A wrapper for form fields with liquid glass effect
/// 
/// Used in IPRS inputs and form fields with smaller blur and border radius.
class LiquidGlassTextField extends StatelessWidget {
  /// The form field widget to wrap
  final Widget child;

  /// Padding inside the wrapper
  final EdgeInsetsGeometry? padding;

  /// Margin around the wrapper
  final EdgeInsetsGeometry? margin;

  /// Border radius for the wrapper (default: 12.0 for text fields)
  final double? borderRadius;

  /// Blur intensity (default: 10.0 for text fields)
  final double? blur;

  /// Whether to show the glass effect (default: true)
  final bool showGlassEffect;

  const LiquidGlassTextField({
    super.key,
    required this.child,
    this.padding,
    this.margin,
    this.borderRadius,
    this.blur,
    this.showGlassEffect = true,
  });

  @override
  Widget build(BuildContext context) {
    final effectiveBorderRadius = borderRadius ?? LiquidGlassTheme.borderRadiusSmall;
    final effectiveBlur = blur ?? LiquidGlassTheme.blurSmall;
    final effectiveMargin = margin ?? EdgeInsets.zero;
    final effectivePadding = padding;

    Widget wrapper = Container(
      margin: effectiveMargin,
      decoration: BoxDecoration(
        gradient: LiquidGlassTheme.standardGradient,
        borderRadius: BorderRadius.circular(effectiveBorderRadius),
        border: Border.all(
          color: Colors.white.withOpacity(LiquidGlassTheme.borderOpacity),
          width: LiquidGlassTheme.borderWidth,
        ),
        boxShadow: LiquidGlassTheme.standardShadows,
      ),
      child: effectivePadding != null
          ? Padding(padding: effectivePadding, child: child)
          : child,
    );

    if (showGlassEffect) {
      wrapper = ClipRRect(
        borderRadius: BorderRadius.circular(effectiveBorderRadius),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: effectiveBlur, sigmaY: effectiveBlur),
          child: wrapper,
        ),
      );
    }

    return wrapper;
  }
}

