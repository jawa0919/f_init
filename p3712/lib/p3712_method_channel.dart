import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'p3712_platform_interface.dart';

/// An implementation of [P3712Platform] that uses method channels.
class MethodChannelP3712 extends P3712Platform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('p3712');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
