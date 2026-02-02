import 'package:flutter/material.dart';

/// A reusable AppBar with liquid glass styling
/// 
/// Provides consistent white background with dark text across pages.
class LiquidGlassAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// The title to display in the AppBar
  final String? title;

  /// Optional widget to display as the title
  final Widget? titleWidget;

  /// List of actions to display in the AppBar
  final List<Widget>? actions;

  /// Whether to show the back button (default: true)
  final bool automaticallyImplyLeading;

  /// Background color (default: white)
  final Color? backgroundColor;

  /// Icon theme for the AppBar
  final IconThemeData? iconTheme;

  /// Text theme for the AppBar
  final TextStyle? titleTextStyle;

  /// Elevation of the AppBar
  final double? elevation;

  const LiquidGlassAppBar({
    super.key,
    this.title,
    this.titleWidget,
    this.actions,
    this.automaticallyImplyLeading = true,
    this.backgroundColor,
    this.iconTheme,
    this.titleTextStyle,
    this.elevation,
  }) : assert(title == null || titleWidget == null, 'Cannot provide both title and titleWidget');

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: titleWidget ?? (title != null ? Text(title!) : null),
      actions: actions,
      automaticallyImplyLeading: automaticallyImplyLeading,
      backgroundColor: backgroundColor ?? Colors.white,
      iconTheme: iconTheme ?? const IconThemeData(color: Colors.black87),
      titleTextStyle: titleTextStyle ??
          const TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
      elevation: elevation ?? 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

