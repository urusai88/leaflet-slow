import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'leaflet_method_channel.dart';

abstract class LeafletPlatform extends PlatformInterface {
  /// Constructs a LeafletPlatform.
  LeafletPlatform() : super(token: _token);

  static final Object _token = Object();

  static LeafletPlatform _instance = MethodChannelLeaflet();

  /// The default instance of [LeafletPlatform] to use.
  ///
  /// Defaults to [MethodChannelLeaflet].
  static LeafletPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [LeafletPlatform] when
  /// they register themselves.
  static set instance(LeafletPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
