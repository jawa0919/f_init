import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:p206/p206.dart';

void main() {
  const MethodChannel channel = MethodChannel('p206');

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
    expect(await P206.platformVersion, '42');
  });
}
