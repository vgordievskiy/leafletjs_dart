@JS('L')
library leafletjs_dart.bind.Marker;

import 'dart:js';
import 'package:js/js.dart';

import 'core.dart';
import 'geo.dart';
import 'map.dart';

import 'ILayer.dart';

@JS()
class Marker extends Evented implements ILayer  {
  external factory Marker(LatLng pnt, JsObject params);
  external void addTo(LeafletMap map);
  external LatLng getLatLng();
  external setLatLng(LatLng pnt);
  external bindPopup(dynamic el, JsObject params);
  external JsObject toGeoJSON();
  external openPopup();
  external  closePopup();
  external togglePopup();
}