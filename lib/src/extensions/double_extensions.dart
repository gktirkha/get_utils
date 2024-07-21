import 'dart:math';

/// Extension on [double] that provides a method to set the precision
/// to a specified number of fraction digits.
extension Precision on double {
  /// Returns the number rounded to the specified number of fraction digits.
  ///
  /// [fractionDigits] specifies the number of digits after the decimal point.
  ///
  /// Example:
  /// ```dart
  /// double value = 3.14159;
  /// double result = value.toPrecision(2); // result will be 3.14
  /// ```
  double toPrecision(int fractionDigits) {
    var mod = pow(10, fractionDigits.toDouble()).toDouble();
    return ((this * mod).round().toDouble() / mod);
  }
}
