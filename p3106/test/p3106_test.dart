import 'package:flutter_test/flutter_test.dart';
import 'package:p3106/p3106.dart';
import 'package:p3106/p3106_platform_interface.dart';
import 'package:p3106/p3106_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockP3106Platform
    with MockPlatformInterfaceMixin
    implements P3106Platform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final P3106Platform initialPlatform = P3106Platform.instance;

  test('$MethodChannelP3106 is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelP3106>());
  });

  test('getPlatformVersion', () async {
    P3106 p3106Plugin = P3106();
    MockP3106Platform fakePlatform = MockP3106Platform();
    P3106Platform.instance = fakePlatform;

    expect(await p3106Plugin.getPlatformVersion(), '42');
  });
}
