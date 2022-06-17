import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'leaflet_platform_interface.dart';

/// An implementation of [LeafletPlatform] that uses method channels.
class MethodChannelLeaflet extends LeafletPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('leaflet');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
