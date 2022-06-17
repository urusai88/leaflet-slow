import 'dart:html';

import 'lib/leaflet.dart' as L;

void main() {
  final map = L.map('output').setView([51.505, -0.09], 13);

  L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {'maxZoom': 19, 'attribution': '© OpenStreetMap'}).addTo(map);
}
