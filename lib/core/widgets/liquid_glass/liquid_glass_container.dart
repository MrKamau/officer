import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:officer/theme/colors.dart';

/// A generic container wrapper with liquid glass morphism effect
/// 
/// Used for modals, dialogs, sections, and other content containers.
class LiquidGlassContainer extends StatelessWidget {
  /// The child widget to display inside the container
  final Widget child;

  /// Padding inside the container
  final EdgeInsetsGeometry? padding;

  /// Margin around the container
  final EdgeInsetsGeometry? margin;

  /// Border radius for the container
  final double? borderRadius;

  /// Blur intensity (sigmaX and sigmaY)
  final double? blur;

  /// Constraints for the container
  final BoxConstraints? constraints;

  /// Width of the container
  final double? width;

  /// Height of the container
  final double? height;

  /// Whether to show the glass effect (default: true)
  final bool showGlassEffect;

  const LiquidGlassContainer({
    super.key,
    required this.child,
    this.padding,
    this.margin,
    this.borderRadius,
    this.blur,
    this.constraints,
    this.width,
    this.height,
    this.showGlassEffect = true,
  });

  @override
  Widget build(BuildContext context) {
    final effectiveBorderRadius = borderRadius ?? LiquidGlassTheme.borderRadiusStandard;
    final effectiveBlur = blur ?? LiquidGlassTheme.blurStandard;
    final effectiveMargin = margin ?? EdgeInsets.zero;
    final effectivePadding = padding;

    Widget container = Container(
      margin: effectiveMargin,
      width: width,
      height: height,
      constraints: constraints,
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
      container = ClipRRect(
        borderRadius: BorderRadius.circular(effectiveBorderRadius),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: effectiveBlur, sigmaY: effectiveBlur),
          child: container,
        ),
      );
    }

    return container;
  }
}

