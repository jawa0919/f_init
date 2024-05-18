import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'p3106_method_channel.dart';

abstract class P3106Platform extends PlatformInterface {
  /// Constructs a P3106Platform.
  P3106Platform() : super(token: _token);

  static final Object _token = Object();

  static P3106Platform _instance = MethodChannelP3106();

  /// The default instance of [P3106Platform] to use.
  ///
  /// Defaults to [MethodChannelP3106].
  static P3106Platform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [P3106Platform] when
  /// they register themselves.
  static set instance(P3106Platform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
