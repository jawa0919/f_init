import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:p223/p223.dart';

void main() {
  const MethodChannel channel = MethodChannel('p223');

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
    expect(await P223.platformVersion, '42');
  });
}
