import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:officer/core/data/datasources/local_storage_data_source.dart';
import 'package:officer/core/utilities/utilities.dart';
import 'package:officer/core/data/network_datasource/config.dart';
import 'package:officer/features/auth/presentation/pages/login.dart';


/// UI Text Constants - Edit all header text here
class _HeaderText {
  static const String iseLabel = 'ISE';
  static const String policeLabel = 'POLICE';
  static const String nationalPoliceService = 'NATIONAL POLICE SERVICE';
  static const String platformSubtitle = 'Police Command | Officer';
  static const String myProfile = 'My Profile';
  static const String settings = 'Settings';
  static const String support = 'Support';
  static const String logOut = 'Log Out';
  static const String settingsComingSoon = 'Settings coming soon';
  static const String supportComingSoon = 'Support coming soon';
}

enum _AppBarAction { profile, settings, support, logout }

class NpsAppBar extends StatefulWidget implements PreferredSizeWidget {
  const NpsAppBar({super.key});

  @override
  final Size preferredSize = const Size.fromHeight(180);

  @override
  State<NpsAppBar> createState() => _NpsAppBarState();
}

class _NpsAppBarState extends State<NpsAppBar> {
  late Future<Map<String, String>> _profile;

  @override
  void initState() {
    super.initState();
    _profile = getDataMap(['mug_shot']);
  }

  Future<void> _handleAction(_AppBarAction action) async {
    if (!mounted) return;
    switch (action) {
      case _AppBarAction.profile:
        // Navigate to profile view when available
        context.showCustomSnackBar('My Profile — coming soon');
      case _AppBarAction.settings:
        context.showCustomSnackBar(_HeaderText.settingsComingSoon);
      case _AppBarAction.support:
        context.showCustomSnackBar(_HeaderText.supportComingSoon);
      case _AppBarAction.logout:
        final confirmed = await _showLogoutConfirmationDialog();
        if (confirmed && mounted) {
          await clearAll();
          if (mounted) {
            context.appNavigatorPushRemoveUntil(const OfficerLogin());
          }
        }
    }
  }

  Future<bool> _showLogoutConfirmationDialog() async {
    return await showDialog<bool>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            title: const Text(
              'Confirm Logout',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0F172A),
              ),
            ),
            content: const Text(
              'Are you sure you want to log out?',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF64748B),
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: const Text(
                  'Cancel',
                  style: TextStyle(
                    color: Color(0xFF64748B),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                style: TextButton.styleFrom(
                  foregroundColor: const Color(0xFFDC2626),
                ),
                child: const Text(
                  'Log Out',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final isMobile = width < 600;
    final isTablet = width >= 600 && width < 1024;

    final horizontalMargin = isMobile ? 8.0 : (isTablet ? 16.0 : 24.0);
    final horizontalPadding = isMobile ? 12.0 : (isTablet ? 16.0 : 24.0);

    return Container(
      margin: EdgeInsets.only(
        left: horizontalMargin,
        right: horizontalMargin,
        top: 16,
        bottom: 24,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding,
        vertical: isMobile ? 24.0 : 16.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.grey[200]!.withOpacity(0.5),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 25,
            offset: const Offset(0, 10),
            spreadRadius: -5,
          ),
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
            spreadRadius: 0,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            color: Colors.transparent,
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _LeftBranding(isMobile: isMobile, isTablet: isTablet),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(width: 12.0),
                      _AvatarMenu(
                        profileFuture: _profile,
                        isMobile: isMobile,
                        isTablet: isTablet,
                        onAction: _handleAction,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Left: Logo + Branding Text
// ---------------------------------------------------------------------------
class _LeftBranding extends StatelessWidget {
  const _LeftBranding({
    required this.isMobile,
    required this.isTablet,
  });

  final bool isMobile;
  final bool isTablet;

  @override
  Widget build(BuildContext context) {
    final logoSize = isMobile ? 40.0 : (isTablet ? 48.0 : 56.0);
    final titleSize = isMobile ? 12.0 : (isTablet ? 14.0 : 18.0);
    final subtitleSize = isMobile ? 12.0 : 14.0;

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/nps.png',
          height: logoSize,
          fit: BoxFit.contain,
          errorBuilder: (context, error, stackTrace) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  _HeaderText.iseLabel,
                  style: TextStyle(
                    fontSize: isMobile ? 20.0 : (isTablet ? 24.0 : 28.0),
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF1E3A8A),
                    letterSpacing: 0.5,
                  ),
                ),
                Text(
                  _HeaderText.policeLabel,
                  style: TextStyle(
                    fontSize: isMobile ? 9.0 : (isTablet ? 10.0 : 11.0),
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            );
          },
        ),
        SizedBox(width: isMobile ? 12.0 : 16.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _HeaderText.nationalPoliceService,
              style: TextStyle(
                fontSize: titleSize,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                height: 1.2,
              ),
              maxLines: 2,
              softWrap: true,
            ),
            SizedBox(height: isMobile ? 2.0 : 4.0),
            Padding(
              padding: EdgeInsets.only(top: isMobile ? 2.0 : 4.0),
              child: Text(
                _HeaderText.platformSubtitle,
                style: TextStyle(
                  fontSize: subtitleSize,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  height: 1.2,
                ),
                maxLines: 2,
                softWrap: true,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

// ---------------------------------------------------------------------------
// Right: Avatar Menu with Dropdown
// ---------------------------------------------------------------------------
class _AvatarMenu extends StatelessWidget {
  const _AvatarMenu({
    required this.profileFuture,
    required this.isMobile,
    required this.isTablet,
    required this.onAction,
  });

  final Future<Map<String, String>> profileFuture;
  final bool isMobile;
  final bool isTablet;
  final Future<void> Function(_AppBarAction) onAction;

  @override
  Widget build(BuildContext context) {
    final avatarSize = isMobile ? 40.0 : (isTablet ? 44.0 : 48.0);

    return FutureBuilder<Map<String, String>>(
      future: profileFuture,
      builder: (context, snapshot) {
        final String? mugShot = snapshot.data?['mug_shot'];

        return PopupMenuButton<_AppBarAction>(
          offset: const Offset(0, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 8,
          color: Colors.white,
          child: Container(
            width: avatarSize,
            height: avatarSize,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.grey[600]!,
                width: 2.5,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: ClipOval(
                child: mugShot != null && mugShot.isNotEmpty
                    ? Image.network(
                        '${BASE_URL}assets/$mugShot',
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return _buildPlaceholderAvatar(avatarSize - 4.0);
                        },
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) return child;
                          return Center(
                            child: CircularProgressIndicator(
                              value: loadingProgress.expectedTotalBytes != null
                                  ? loadingProgress.cumulativeBytesLoaded /
                                      loadingProgress.expectedTotalBytes!
                                  : null,
                              strokeWidth: 2,
                              color: Colors.blue[400],
                            ),
                          );
                        },
                      )
                    : _buildPlaceholderAvatar(avatarSize - 4.0),
              ),
            ),
          ),
          itemBuilder: (BuildContext context) => [
            PopupMenuItem<_AppBarAction>(
              value: _AppBarAction.profile,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.person, size: 20, color: Colors.grey[700]),
                  const SizedBox(width: 12),
                  Text(
                    _HeaderText.myProfile,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black87,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            PopupMenuItem<_AppBarAction>(
              value: _AppBarAction.settings,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.settings, size: 20, color: Colors.grey[700]),
                  const SizedBox(width: 12),
                  Text(
                    _HeaderText.settings,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black87,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            PopupMenuItem<_AppBarAction>(
              value: _AppBarAction.support,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.help_outline,
                    size: 20,
                    color: Colors.grey[700],
                  ),
                  const SizedBox(width: 12),
                  Text(
                    _HeaderText.support,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black87,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            const PopupMenuDivider(height: 1),
            PopupMenuItem<_AppBarAction>(
              value: _AppBarAction.logout,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.exit_to_app, size: 20, color: Colors.red),
                  const SizedBox(width: 12),
                  Text(
                    _HeaderText.logOut,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.red,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          ],
          onSelected: onAction,
        );
      },
    );
  }

  Widget _buildPlaceholderAvatar(double size) {
    return Container(
      color: Colors.blue[100],
      child: Center(
        child: Icon(
          Icons.person,
          size: size * 0.6,
          color: Colors.blue[400],
        ),
      ),
    );
  }
}
