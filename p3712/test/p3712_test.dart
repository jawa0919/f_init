import 'package:flutter_test/flutter_test.dart';
import 'package:p3712/p3712.dart';
import 'package:p3712/p3712_platform_interface.dart';
import 'package:p3712/p3712_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockP3712Platform
    with MockPlatformInterfaceMixin
    implements P3712Platform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final P3712Platform initialPlatform = P3712Platform.instance;

  test('$MethodChannelP3712 is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelP3712>());
  });

  test('getPlatformVersion', () async {
    P3712 p3712Plugin = P3712();
    MockP3712Platform fakePlatform = MockP3712Platform();
    P3712Platform.instance = fakePlatform;

    expect(await p3712Plugin.getPlatformVersion(), '42');
  });
}
