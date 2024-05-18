import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'p305_platform_interface.dart';

/// An implementation of [P305Platform] that uses method channels.
class MethodChannelP305 extends P305Platform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('p305');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
