import 'package:flutter_test/flutter_test.dart';
import 'package:leaflet/leaflet.dart';
import 'package:leaflet/leaflet_platform_interface.dart';
import 'package:leaflet/leaflet_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockLeafletPlatform 
    with MockPlatformInterfaceMixin
    implements LeafletPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final LeafletPlatform initialPlatform = LeafletPlatform.instance;

  test('$MethodChannelLeaflet is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelLeaflet>());
  });

  test('getPlatformVersion', () async {
    Leaflet leafletPlugin = Leaflet();
    MockLeafletPlatform fakePlatform = MockLeafletPlatform();
    LeafletPlatform.instance = fakePlatform;
  
    expect(await leafletPlugin.getPlatformVersion(), '42');
  });
}
