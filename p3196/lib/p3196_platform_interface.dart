import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'p3196_method_channel.dart';

abstract class P3196Platform extends PlatformInterface {
  /// Constructs a P3196Platform.
  P3196Platform() : super(token: _token);

  static final Object _token = Object();

  static P3196Platform _instance = MethodChannelP3196();

  /// The default instance of [P3196Platform] to use.
  ///
  /// Defaults to [MethodChannelP3196].
  static P3196Platform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [P3196Platform] when
  /// they register themselves.
  static set instance(P3196Platform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
