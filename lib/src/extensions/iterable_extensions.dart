/// Extension on [Iterable] that provides additional utility methods.
extension IterableExtensions<T> on Iterable<T> {
  /// Maps each element of the iterable to an iterable of type [TRes]
  /// using the provided [selector] function and flattens the result.
  ///
  /// [selector] is a function that takes an element of type [T] and returns an
  /// iterable of type [TRes]. If the result is null, it is skipped.
  ///
  /// Example:
  /// ```dart
  /// var list = [1, 2, 3];
  /// var result = list.mapMany((item) => [item, item * 2]);
  /// // result is [1, 2, 2, 4, 3, 6]
  /// ```
  Iterable<TRes> mapMany<TRes>(
      Iterable<TRes>? Function(T item) selector) sync* {
    for (var item in this) {
      final res = selector(item);
      if (res != null) yield* res;
    }
  }
}
