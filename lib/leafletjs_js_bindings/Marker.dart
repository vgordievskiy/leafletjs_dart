@JS('Leaflet')
library leafletjs_dart.bind.Marker;

import 'dart:js';
import 'package:js/js.dart';

import 'Icon.dart' as L;
import 'core.dart';
import 'geo.dart';
import 'map.dart' as L;

import 'ILayer.dart';

@anonymous
@JS()
class MarkerOptions {
  external factory MarkerOptions({
    L.Icon icon,
    String title
  });
}

@anonymous
@JS()
class PopupOptions {
  external factory PopupOptions();
}

@JS()
class Marker extends Evented implements ILayer  {
  external factory Marker(LatLng pnt, MarkerOptions params);
  external void addTo(L.GMap map);
  external LatLng getLatLng();
  external setLatLng(LatLng pnt);
  external bindPopup(dynamic el, PopupOptions params);
  external dynamic toGeoJSON();
  external openPopup();
  external closePopup();
  external togglePopup();
}
