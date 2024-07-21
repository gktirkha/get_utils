import '../get_utils/get_utils.dart';

/// Extension on [dynamic] that provides utility methods for handling dynamic types.
///
/// This extension adds utility methods that are useful for working with dynamic
/// types in Dart. These methods include checks for blank or null values and
/// logging methods for errors and information.

extension GetDynamicUtils on dynamic {
  /// Returns true if the value is considered blank according to [GetUtils].
  ///
  /// This method uses [GetUtils.isBlank] to determine if the value is blank.
  ///
  /// Returns:
  /// - `true` if the value is blank.
  /// - `false` if the value is not blank.
  /// - `null` if the value cannot be determined.
  bool? get isBlank => GetUtils.isBlank(this);

  /// Returns true if the value is either null or blank according to [GetUtils].
  ///
  /// This method uses [GetUtils.isNullOrBlank] to check if the value is either
  /// null or blank.
  ///
  /// Returns:
  /// - `true` if the value is null or blank.
  /// - `false` if the value is neither null nor blank.
  /// - `null` if the value cannot be determined.
  bool? get isNullOrBlank => GetUtils.isNullOrBlank(this);

  /// Prints an error message with the type of the value and additional information.
  ///
  /// Uses the provided [logFunction] to print the error message. Defaults to
  /// [GetUtils.printFunction] if no function is provided.
  ///
  /// [info] Additional information to include in the error message.
  /// [logFunction] Function used to print the error message.
  void printError(
          {String info = '', Function logFunction = GetUtils.printFunction}) =>
      // ignore: unnecessary_this
      logFunction('Error: ${this.runtimeType}', this, info, isError: true);

  /// Prints an informational message with the type of the value and additional information.
  ///
  /// Uses the provided [printFunction] to print the informational message. Defaults to
  /// [GetUtils.printFunction] if no function is provided.
  ///
  /// [info] Additional information to include in the informational message.
  /// [printFunction] Function used to print the informational message.
  void printInfo(
          {String info = '',
          Function printFunction = GetUtils.printFunction}) =>
      // ignore: unnecessary_this
      printFunction('Info: ${this.runtimeType}', this, info);
}
