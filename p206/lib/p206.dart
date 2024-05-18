
import 'dart:async';

import 'package:flutter/services.dart';

class P206 {
  static const MethodChannel _channel =
      const MethodChannel('p206');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
