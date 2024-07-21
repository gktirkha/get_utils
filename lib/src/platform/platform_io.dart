import 'dart:io';

/// Utility class to provide platform-specific checks.
///
/// This class provides static getters to determine the current platform.
class GeneralPlatform {
  /// Checks if the current platform is a web platform.
  ///
  /// Since this implementation does not support web platforms, it always returns `false`.
  static bool get isWeb => false;

  /// Checks if the current platform is macOS.
  static bool get isMacOS => Platform.isMacOS;

  /// Checks if the current platform is Windows.
  static bool get isWindows => Platform.isWindows;

  /// Checks if the current platform is Linux.
  static bool get isLinux => Platform.isLinux;

  /// Checks if the current platform is Android.
  static bool get isAndroid => Platform.isAndroid;

  /// Checks if the current platform is iOS.
  static bool get isIOS => Platform.isIOS;

  /// Checks if the current platform is Fuchsia.
  static bool get isFuchsia => Platform.isFuchsia;

  /// Checks if the current platform is a desktop platform (macOS, Windows, or Linux).
  static bool get isDesktop =>
      Platform.isMacOS || Platform.isWindows || Platform.isLinux;
}
