import 'package:flutter_test/flutter_test.dart';
import 'package:p3196/p3196.dart';
import 'package:p3196/p3196_platform_interface.dart';
import 'package:p3196/p3196_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockP3196Platform
    with MockPlatformInterfaceMixin
    implements P3196Platform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final P3196Platform initialPlatform = P3196Platform.instance;

  test('$MethodChannelP3196 is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelP3196>());
  });

  test('getPlatformVersion', () async {
    P3196 p3196Plugin = P3196();
    MockP3196Platform fakePlatform = MockP3196Platform();
    P3196Platform.instance = fakePlatform;

    expect(await p3196Plugin.getPlatformVersion(), '42');
  });
}
