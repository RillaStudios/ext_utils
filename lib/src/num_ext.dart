part of 'package:ext_utils/ext_utils.dart';

/// Extension on [num] to add useful methods.
///
extension NumExt on num {
  /// Returns the nearest multiple of [multipleOf] to this number.
  ///
  /// ### Note:
  ///
  /// - If the number is exactly in the middle between two multiples, the higher
  /// multiple will be returned.
  ///
  /// - If a double is being used as the number, the double will be rounded to the
  /// nearest integer first.
  ///
  /// ### Example:
  ///
  /// 5.roundToNearestMultiple(3) will return 6.
  ///
  /// ### Code example:
  ///
  /// ```dart
  /// print(5.getNearestMultiple(3)); // 6
  /// ```
  int roundToNearestMultiple(int multipleOf) {
    return (this / multipleOf).round() * multipleOf;
  }

  /// Returns the nearest multiple of [multipleOf] to this number.
  ///
  /// ### Note:
  ///
  /// - If the number is exactly in the middle between two multiples, the lower
  /// multiple will be returned.
  ///
  /// - If a double is being used as the number, the double will be floored to its
  /// integer value first.
  ///
  /// ### Example:
  ///
  /// 5.33.floorToNearestMultiple(3) will return 3.
  ///
  /// ### Code example:
  ///
  /// ```dart
  /// print(5.33.floorToNearestMultiple(3)); // 3
  /// ```
  ///
  int floorToNearestMultiple(int multipleOf) {
    return (this / multipleOf).floor() * multipleOf;
  }

  /// Returns the percentage of this number out of [total].
  ///
  /// ### Example:
  ///
  /// 5.percentOf(10) will return 50.0.
  ///
  double percentOf(num total) {
    return (this / total) * 100;
  }

  /// Returns the percentage of this number out of [total] as a string.
  ///
  /// ### Example:
  ///
  /// 5.percentOfAsString(10) will return '50.0%'.
  ///
  String percentOfAsString(num total) {
    return '${percentOf(total).toStringAsFixed(1)}%';
  }
}
