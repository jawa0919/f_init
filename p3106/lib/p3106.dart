
import 'p3106_platform_interface.dart';

class P3106 {
  Future<String?> getPlatformVersion() {
    return P3106Platform.instance.getPlatformVersion();
  }
}
