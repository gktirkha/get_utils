import 'dart:async';

import '../get_utils/get_utils.dart';

/// Extension on [num] that provides additional utility methods.
extension GetNumUtils on num {
  /// Checks if this number is lower than the given number [b].
  ///
  /// This method uses [GetUtils.isLowerThan] for comparison.
  ///
  /// Example:
  /// ```dart
  /// var result = 5.isLowerThan(10); // true
  /// ```
  bool isLowerThan(num b) => GetUtils.isLowerThan(this, b);

  /// Checks if this number is greater than the given number [b].
  ///
  /// This method uses [GetUtils.isGreaterThan] for comparison.
  ///
  /// Example:
  /// ```dart
  /// var result = 10.isGreaterThan(5); // true
  /// ```
  bool isGreaterThan(num b) => GetUtils.isGreaterThan(this, b);

  /// Checks if this number is equal to the given number [b].
  ///
  /// This method uses [GetUtils.isEqual] for comparison.
  ///
  /// Example:
  /// ```dart
  /// var result = 5.isEqual(5); // true
  /// ```
  bool isEqual(num b) => GetUtils.isEqual(this, b);

  /// Delays the execution of the given [callback] by this number of seconds.
  ///
  /// If no [callback] is provided, the method simply delays for the specified duration.
  ///
  /// Example:
  /// ```dart
  /// 2.delay(() => print('Executed after 2 seconds'));
  /// ```
  Future delay([FutureOr Function()? callback]) async => Future.delayed(
        Duration(milliseconds: (this * 1000).round()),
        callback,
      );

  /// Converts this number to a [Duration] in milliseconds.
  ///
  /// Example:
  /// ```dart
  /// var duration = 1.5.milliseconds;
  /// ```
  Duration get milliseconds => Duration(microseconds: (this * 1000).round());

  /// Converts this number to a [Duration] in seconds.
  ///
  /// Example:
  /// ```dart
  /// var duration = 1.5.seconds;
  /// ```
  Duration get seconds => Duration(milliseconds: (this * 1000).round());

  /// Converts this number to a [Duration] in minutes.
  ///
  /// Example:
  /// ```dart
  /// var duration = 1.5.minutes;
  /// ```
  Duration get minutes =>
      Duration(seconds: (this * Duration.secondsPerMinute).round());

  /// Converts this number to a [Duration] in hours.
  ///
  /// Example:
  /// ```dart
  /// var duration = 1.5.hours;
  /// ```
  Duration get hours =>
      Duration(minutes: (this * Duration.minutesPerHour).round());

  /// Converts this number to a [Duration] in days.
  ///
  /// Example:
  /// ```dart
  /// var duration = 1.5.days;
  /// ```
  Duration get days => Duration(hours: (this * Duration.hoursPerDay).round());
}
