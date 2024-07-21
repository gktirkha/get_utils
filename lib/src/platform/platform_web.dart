// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import '../../get_utils.dart';

html.Navigator _navigator = html.window.navigator;

/// Utility class to provide platform-specific checks for web applications.
///
/// This class provides static getters to determine the current platform.
class GeneralPlatform {
  /// Checks if the current platform is a web platform.
  ///
  /// Since this implementation is for web platforms, it always returns `true`.
  static bool get isWeb => true;

  /// Checks if the current platform is macOS.
  ///
  /// Uses the navigator's appVersion to determine if the platform is macOS.
  static bool get isMacOS =>
      _navigator.appVersion.contains('Mac OS') && !GeneralPlatform.isIOS;

  /// Checks if the current platform is Windows.
  ///
  /// Uses the navigator's appVersion to determine if the platform is Windows.
  static bool get isWindows => _navigator.appVersion.contains('Win');

  /// Checks if the current platform is Linux.
  ///
  /// Uses the navigator's appVersion to determine if the platform is Linux.
  static bool get isLinux =>
      (_navigator.appVersion.contains('Linux') ||
          _navigator.appVersion.contains('x11')) &&
      !isAndroid;

  /// Checks if the current platform is Android.
  ///
  /// Uses the navigator's appVersion to determine if the platform is Android.
  /// For more information, see [this link](https://developer.chrome.com/multidevice/user-agent).
  static bool get isAndroid => _navigator.appVersion.contains('Android ');

  /// Checks if the current platform is iOS.
  ///
  /// Uses the navigator's platform and maxTouchPoints to determine if the platform is iOS.
  /// This method helps to distinguish between iPad on iOS13 and new macOS.
  static bool get isIOS {
    // maxTouchPoints is needed to separate iPad iOS13 vs new MacOS
    return GetUtils.hasMatch(_navigator.platform, r'/iPad|iPhone|iPod/') ||
        (_navigator.platform == 'MacIntel' && _navigator.maxTouchPoints! > 1);
  }

  /// Checks if the current platform is Fuchsia.
  ///
  /// Since Fuchsia is not a target for web platforms, it always returns `false`.
  static bool get isFuchsia => false;

  /// Checks if the current platform is a desktop platform (macOS, Windows, or Linux).
  static bool get isDesktop => isMacOS || isWindows || isLinux;
}
