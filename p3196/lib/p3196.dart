
import 'p3196_platform_interface.dart';

class P3196 {
  Future<String?> getPlatformVersion() {
    return P3196Platform.instance.getPlatformVersion();
  }
}
