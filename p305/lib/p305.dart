
import 'p305_platform_interface.dart';

class P305 {
  Future<String?> getPlatformVersion() {
    return P305Platform.instance.getPlatformVersion();
  }
}
