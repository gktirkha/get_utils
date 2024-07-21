import 'package:flutter/widgets.dart';

/// Extension on [Widget] to add padding functionality.
extension WidgetPaddingX on Widget {
  /// Wraps the widget with a [Padding] widget with the same padding value for all sides.
  ///
  /// [padding] specifies the amount of padding to apply to all sides.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello').paddingAll(16.0);
  /// ```
  Widget paddingAll(double padding) =>
      Padding(padding: EdgeInsets.all(padding), child: this);

  /// Wraps the widget with a [Padding] widget with different padding values for horizontal and vertical sides.
  ///
  /// [horizontal] specifies the amount of horizontal padding.
  /// [vertical] specifies the amount of vertical padding.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello').paddingSymmetric(horizontal: 16.0, vertical: 8.0);
  /// ```
  Widget paddingSymmetric({double horizontal = 0.0, double vertical = 0.0}) =>
      Padding(
          padding:
              EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
          child: this);

  /// Wraps the widget with a [Padding] widget with specific padding values for each side.
  ///
  /// [left] specifies the padding on the left side.
  /// [top] specifies the padding on the top side.
  /// [right] specifies the padding on the right side.
  /// [bottom] specifies the padding on the bottom side.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello').paddingOnly(left: 8.0, top: 16.0);
  /// ```
  Widget paddingOnly({
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
  }) =>
      Padding(
          padding: EdgeInsets.only(
              top: top, left: left, right: right, bottom: bottom),
          child: this);

  /// Wraps the widget with a [Padding] widget with zero padding.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello').paddingZero;
  /// ```
  Widget get paddingZero => Padding(padding: EdgeInsets.zero, child: this);
}

/// Extension on [Widget] to add margin functionality.
extension WidgetMarginX on Widget {
  /// Wraps the widget with a [Container] widget with the same margin value for all sides.
  ///
  /// [margin] specifies the amount of margin to apply to all sides.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello').marginAll(16.0);
  /// ```
  Widget marginAll(double margin) =>
      Container(margin: EdgeInsets.all(margin), child: this);

  /// Wraps the widget with a [Container] widget with different margin values for horizontal and vertical sides.
  ///
  /// [horizontal] specifies the amount of horizontal margin.
  /// [vertical] specifies the amount of vertical margin.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello').marginSymmetric(horizontal: 16.0, vertical: 8.0);
  /// ```
  Widget marginSymmetric({double horizontal = 0.0, double vertical = 0.0}) =>
      Container(
          margin:
              EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
          child: this);

  /// Wraps the widget with a [Container] widget with specific margin values for each side.
  ///
  /// [left] specifies the margin on the left side.
  /// [top] specifies the margin on the top side.
  /// [right] specifies the margin on the right side.
  /// [bottom] specifies the margin on the bottom side.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello').marginOnly(left: 8.0, top: 16.0);
  /// ```
  Widget marginOnly({
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
  }) =>
      Container(
          margin: EdgeInsets.only(
              top: top, left: left, right: right, bottom: bottom),
          child: this);

  /// Wraps the widget with a [Container] widget with zero margin.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello').marginZero;
  /// ```
  Widget get marginZero => Container(margin: EdgeInsets.zero, child: this);
}

/// Extension on [Widget] to allow insertion into a [CustomScrollView] as a sliver.
extension WidgetSliverBoxX on Widget {
  /// Wraps the widget with a [SliverToBoxAdapter] to be used inside a [CustomScrollView].
  ///
  /// Example:
  /// ```dart
  /// CustomScrollView(
  ///   slivers: [
  ///     Text('Hello').sliverBox,
  ///   ],
  /// );
  /// ```
  Widget get sliverBox => SliverToBoxAdapter(child: this);
}
