import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'p305_method_channel.dart';

abstract class P305Platform extends PlatformInterface {
  /// Constructs a P305Platform.
  P305Platform() : super(token: _token);

  static final Object _token = Object();

  static P305Platform _instance = MethodChannelP305();

  /// The default instance of [P305Platform] to use.
  ///
  /// Defaults to [MethodChannelP305].
  static P305Platform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [P305Platform] when
  /// they register themselves.
  static set instance(P305Platform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
