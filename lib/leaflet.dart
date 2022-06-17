
import 'leaflet_platform_interface.dart';

class Leaflet {
  Future<String?> getPlatformVersion() {
    return LeafletPlatform.instance.getPlatformVersion();
  }
}
