import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:officer/theme/colors.dart';

/// A reusable card widget with liquid glass morphism effect
/// 
/// This widget provides a consistent glass effect across the app with
/// configurable parameters for different use cases.
class LiquidGlassCard extends StatelessWidget {
  /// The child widget to display inside the card
  final Widget child;

  /// Optional callback when the card is tapped
  final VoidCallback? onTap;

  /// Padding inside the card
  final EdgeInsetsGeometry? padding;

  /// Margin around the card
  final EdgeInsetsGeometry? margin;

  /// Border radius for the card
  final double? borderRadius;

  /// Blur intensity (sigmaX and sigmaY)
  final double? blur;

  /// Whether to show the glass effect (default: true)
  final bool showGlassEffect;

  /// Whether to show shadows (default: true)
  final bool showShadow;

  /// Whether to show border (default: true)
  final bool showBorder;

  /// Custom gradient for the card (if null, uses LiquidGlassTheme.standardGradient)
  final Gradient? gradient;

  const LiquidGlassCard({
    super.key,
    required this.child,
    this.onTap,
    this.padding,
    this.margin,
    this.borderRadius,
    this.blur,
    this.showGlassEffect = true,
    this.showShadow = true,
    this.showBorder = true,
    this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    final effectiveBorderRadius = borderRadius ?? LiquidGlassTheme.borderRadiusStandard;
    final effectiveBlur = blur ?? LiquidGlassTheme.blurStandard;
    final effectiveMargin = margin ?? EdgeInsets.zero;
    final effectivePadding = padding;

    Widget cardContent = Container(
      margin: effectiveMargin,
      decoration: BoxDecoration(
        gradient: gradient ?? LiquidGlassTheme.standardGradient,
        borderRadius: BorderRadius.circular(effectiveBorderRadius),
        border: showBorder ? Border.all(
          color: Colors.white.withOpacity(LiquidGlassTheme.borderOpacity),
          width: LiquidGlassTheme.borderWidth,
        ) : null,
        boxShadow: showShadow ? LiquidGlassTheme.standardShadows : null,
      ),
      child: effectivePadding != null
          ? Padding(padding: effectivePadding, child: child)
          : child,
    );

    if (showGlassEffect) {
      cardContent = ClipRRect(
        borderRadius: BorderRadius.circular(effectiveBorderRadius),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: effectiveBlur, sigmaY: effectiveBlur),
          child: cardContent,
        ),
      );
    }

    if (onTap != null) {
      return InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(effectiveBorderRadius),
        child: cardContent,
      );
    }

    return cardContent;
  }
}

