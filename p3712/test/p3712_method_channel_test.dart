import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:p3712/p3712_method_channel.dart';

void main() {
  MethodChannelP3712 platform = MethodChannelP3712();
  const MethodChannel channel = MethodChannel('p3712');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
