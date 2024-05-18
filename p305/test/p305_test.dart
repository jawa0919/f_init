import 'package:flutter_test/flutter_test.dart';
import 'package:p305/p305.dart';
import 'package:p305/p305_platform_interface.dart';
import 'package:p305/p305_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockP305Platform 
    with MockPlatformInterfaceMixin
    implements P305Platform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final P305Platform initialPlatform = P305Platform.instance;

  test('$MethodChannelP305 is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelP305>());
  });

  test('getPlatformVersion', () async {
    P305 p305Plugin = P305();
    MockP305Platform fakePlatform = MockP305Platform();
    P305Platform.instance = fakePlatform;
  
    expect(await p305Plugin.getPlatformVersion(), '42');
  });
}
