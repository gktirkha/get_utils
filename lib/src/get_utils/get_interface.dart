import 'dart:developer' as developer;

import 'package:flutter/foundation.dart';

class GetInterface {
  static void log(String value, {bool isError = false}) {
    if (isError || kDebugMode) developer.log(value, name: 'GET_UTILS');
  }
}
