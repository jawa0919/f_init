
import 'p3712_platform_interface.dart';

class P3712 {
  Future<String?> getPlatformVersion() {
    return P3712Platform.instance.getPlatformVersion();
  }
}
