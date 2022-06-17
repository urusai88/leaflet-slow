@JS('L')
library leaflet;

import 'package:js/js.dart';

@JS()
external LMap map(String id);

@JS()
external TileLayer tileLayer(String url, Map options);

@JS('Map')
class LMap {
  external LMap setView(List<double> point, double zoom);
}

@JS()
class Layer {
  external Layer addTo(LMap map);
}

@JS()
class TileLayer implements Layer {
  @override
  external TileLayer addTo(LMap map);
}
