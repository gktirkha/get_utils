import 'platform_web.dart' if (dart.library.io) 'platform_io.dart';

/// Utility class to provide platform-specific checks for both web and non-web applications.
///
/// This class provides static getters to determine the current platform by delegating
/// to `GeneralPlatform` based on the platform type (web or non-web).
class GetPlatform {
  /// Checks if the current platform is a web platform.
  ///
  /// Delegates to `GeneralPlatform.isWeb` to determine if the platform is web.
  static bool get isWeb => GeneralPlatform.isWeb;

  /// Checks if the current platform is macOS.
  ///
  /// Delegates to `GeneralPlatform.isMacOS` to determine if the platform is macOS.
  static bool get isMacOS => GeneralPlatform.isMacOS;

  /// Checks if the current platform is Windows.
  ///
  /// Delegates to `GeneralPlatform.isWindows` to determine if the platform is Windows.
  static bool get isWindows => GeneralPlatform.isWindows;

  /// Checks if the current platform is Linux.
  ///
  /// Delegates to `GeneralPlatform.isLinux` to determine if the platform is Linux.
  static bool get isLinux => GeneralPlatform.isLinux;

  /// Checks if the current platform is Android.
  ///
  /// Delegates to `GeneralPlatform.isAndroid` to determine if the platform is Android.
  static bool get isAndroid => GeneralPlatform.isAndroid;

  /// Checks if the current platform is iOS.
  ///
  /// Delegates to `GeneralPlatform.isIOS` to determine if the platform is iOS.
  static bool get isIOS => GeneralPlatform.isIOS;

  /// Checks if the current platform is Fuchsia.
  ///
  /// Delegates to `GeneralPlatform.isFuchsia` to determine if the platform is Fuchsia.
  static bool get isFuchsia => GeneralPlatform.isFuchsia;

  /// Checks if the current platform is mobile (iOS or Android).
  ///
  /// Combines `GetPlatform.isIOS` and `GetPlatform.isAndroid` to determine if the platform is mobile.
  static bool get isMobile => GetPlatform.isIOS || GetPlatform.isAndroid;

  /// Checks if the current platform is a desktop platform (macOS, Windows, or Linux).
  ///
  /// Combines `GetPlatform.isMacOS`, `GetPlatform.isWindows`, and `GetPlatform.isLinux`
  /// to determine if the platform is desktop.
  static bool get isDesktop =>
      GetPlatform.isMacOS || GetPlatform.isWindows || GetPlatform.isLinux;
}
