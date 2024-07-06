import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'p3712_method_channel.dart';

abstract class P3712Platform extends PlatformInterface {
  /// Constructs a P3712Platform.
  P3712Platform() : super(token: _token);

  static final Object _token = Object();

  static P3712Platform _instance = MethodChannelP3712();

  /// The default instance of [P3712Platform] to use.
  ///
  /// Defaults to [MethodChannelP3712].
  static P3712Platform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [P3712Platform] when
  /// they register themselves.
  static set instance(P3712Platform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
