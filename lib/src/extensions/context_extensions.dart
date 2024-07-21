import 'package:flutter/material.dart';

import '../platform/platform.dart';

/// Extension methods on [BuildContext] for enhanced media query and theme functionalities.
extension ContextExtensions on BuildContext {
  /// Returns the size of the current media query.
  ///
  /// This is equivalent to `MediaQuery.of(context).size`.
  Size get mediaQuerySize => MediaQuery.of(this).size;

  /// Returns the height of the current media query.
  ///
  /// This is equivalent to `MediaQuery.of(context).size.height`.
  /// Note: This value updates when you resize your screen (e.g., on a browser or desktop window).
  double get height => mediaQuerySize.height;

  /// Returns the width of the current media query.
  ///
  /// This is equivalent to `MediaQuery.of(context).size.width`.
  /// Note: This value updates when you resize your screen (e.g., on a browser or desktop window).
  double get width => mediaQuerySize.width;

  /// Returns a portion of the height of the current media query.
  ///
  /// [dividedBy] specifies the factor to divide the height. For example, setting it to 3 will return a third of the height.
  /// [reducedBy] specifies a percentage of how much of the height to reduce. For example, reducing by 56% means getting 46% of the height.
  double heightTransformer({double dividedBy = 1, double reducedBy = 0.0}) {
    return (mediaQuerySize.height -
            ((mediaQuerySize.height / 100) * reducedBy)) /
        dividedBy;
  }

  /// Returns a portion of the width of the current media query.
  ///
  /// [dividedBy] specifies the factor to divide the width. For example, setting it to 3 will return a third of the width.
  /// [reducedBy] specifies a percentage of how much of the width to reduce. For example, reducing by 56% means getting 44% of the width.
  double widthTransformer({double dividedBy = 1, double reducedBy = 0.0}) {
    return (mediaQuerySize.width - ((mediaQuerySize.width / 100) * reducedBy)) /
        dividedBy;
  }

  /// Returns the ratio of height to width, considering optional reductions.
  ///
  /// [dividedBy] specifies the factor to divide both height and width.
  /// [reducedByW] specifies the percentage reduction for width.
  /// [reducedByH] specifies the percentage reduction for height.
  double ratio({
    double dividedBy = 1,
    double reducedByW = 0.0,
    double reducedByH = 0.0,
  }) {
    return heightTransformer(dividedBy: dividedBy, reducedBy: reducedByH) /
        widthTransformer(dividedBy: dividedBy, reducedBy: reducedByW);
  }

  /// Returns the current theme data.
  ///
  /// This is equivalent to `Theme.of(context)`.
  ThemeData get theme => Theme.of(this);

  /// Checks if the current theme is dark mode.
  ///
  /// Returns `true` if the theme's brightness is `Brightness.dark`.
  bool get isDarkMode => (theme.brightness == Brightness.dark);

  /// Returns the color of icons in the current theme.
  ///
  /// This is equivalent to `Theme.of(context).iconTheme.color`.
  Color? get iconColor => theme.iconTheme.color;

  /// Returns the text theme of the current theme.
  ///
  /// This is equivalent to `Theme.of(context).textTheme`.
  TextTheme get textTheme => Theme.of(this).textTheme;

  /// Returns the padding of the current media query.
  ///
  /// This is equivalent to `MediaQuery.of(context).padding`.
  EdgeInsets get mediaQueryPadding => MediaQuery.of(this).padding;

  /// Returns the media query data of the current context.
  ///
  /// This is equivalent to `MediaQuery.of(context)`.
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  /// Returns the view padding of the current media query.
  ///
  /// This is equivalent to `MediaQuery.of(context).viewPadding`.
  EdgeInsets get mediaQueryViewPadding => MediaQuery.of(this).viewPadding;

  /// Returns the view insets of the current media query.
  ///
  /// This is equivalent to `MediaQuery.of(context).viewInsets`.
  EdgeInsets get mediaQueryViewInsets => MediaQuery.of(this).viewInsets;

  /// Returns the orientation of the current media query.
  ///
  /// This is equivalent to `MediaQuery.of(context).orientation`.
  Orientation get orientation => MediaQuery.of(this).orientation;

  /// Checks if the device is in landscape mode.
  ///
  /// Returns `true` if the orientation is `Orientation.landscape`.
  bool get isLandscape => orientation == Orientation.landscape;

  /// Checks if the device is in portrait mode.
  ///
  /// Returns `true` if the orientation is `Orientation.portrait`.
  bool get isPortrait => orientation == Orientation.portrait;

  /// Returns the device pixel ratio of the current media query.
  ///
  /// This is equivalent to `MediaQuery.of(context).devicePixelRatio`.
  double get devicePixelRatio => MediaQuery.of(this).devicePixelRatio;

  @Deprecated("Use [textScaler] instead")

  /// Returns the text scale factor of the current media query.
  ///
  /// This is equivalent to `MediaQuery.of(context).textScaleFactor`.
  double get textScaleFactor => MediaQuery.of(this).textScaleFactor;

  /// Returns the text scaler of the current media query.
  ///
  /// This is equivalent to `MediaQuery.of(context).textScaler`.
  TextScaler get textScaler => MediaQuery.of(this).textScaler;

  /// Returns the shortest side of the media query's size.
  ///
  /// This value represents the smallest dimension of the screen.
  double get mediaQueryShortestSide => mediaQuerySize.shortestSide;

  /// Checks if the width of the screen is larger than 800 pixels.
  ///
  /// Returns `true` if the width is greater than 800 pixels.
  bool get showNavbar => (width > 800);

  /// Checks if the shortest side of the screen is smaller than 600 pixels.
  ///
  /// Returns `true` if the shortest side is less than 600 pixels, indicating a phone.
  bool get isPhone => (mediaQueryShortestSide < 600);

  /// Checks if the shortest side of the screen is at least 600 pixels.
  ///
  /// Returns `true` if the shortest side is 600 pixels or more, indicating a small tablet.
  bool get isSmallTablet => (mediaQueryShortestSide >= 600);

  /// Checks if the shortest side of the screen is at least 720 pixels.
  ///
  /// Returns `true` if the shortest side is 720 pixels or more, indicating a large tablet.
  bool get isLargeTablet => (mediaQueryShortestSide >= 720);

  /// Checks if the current device is a tablet.
  ///
  /// Returns `true` if the device is either a small or large tablet.
  bool get isTablet => isSmallTablet || isLargeTablet;

  /// Returns a specific value based on the screen size.
  ///
  /// [mobile] value is returned if the device width is less than 600 pixels.
  /// [tablet] value is returned if the device width is between 600 and 1200 pixels.
  /// [desktop] value is returned if the device width is 1200 pixels or more.
  /// [watch] value is returned if the device width is less than 300 pixels.
  T responsiveValue<T>({
    T? mobile,
    T? tablet,
    T? desktop,
    T? watch,
  }) {
    var deviceWidth = mediaQuerySize.shortestSide;
    if (GetPlatform.isDesktop) {
      deviceWidth = mediaQuerySize.width;
    }
    if (deviceWidth >= 1200 && desktop != null) {
      return desktop;
    } else if (deviceWidth >= 600 && tablet != null) {
      return tablet;
    } else if (deviceWidth < 300 && watch != null) {
      return watch;
    } else {
      return mobile!;
    }
  }
}
