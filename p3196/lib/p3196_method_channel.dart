import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'p3196_platform_interface.dart';

/// An implementation of [P3196Platform] that uses method channels.
class MethodChannelP3196 extends P3196Platform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('p3196');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
