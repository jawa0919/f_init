import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'p3106_platform_interface.dart';

/// An implementation of [P3106Platform] that uses method channels.
class MethodChannelP3106 extends P3106Platform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('p3106');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
