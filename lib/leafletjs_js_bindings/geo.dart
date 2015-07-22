@JsName('L')
library leafletjs_dart.bind.geo;

import 'dart:html';
import 'package:js_wrapping/js_wrapping.dart';

part 'geo.g.dart';

abstract class _LatLng implements JsInterface  {
  external factory _LatLng(double lat, double lnt, [double alt = null]);
  double get lat;
  double get lng;
}

abstract class _LatLngBounds implements JsInterface {
  external factory _LatLngBounds(LatLng SW, LatLng NE);
  bool isValid();
  LatLng getSouthWest();
  LatLng getNorthEast();
  LatLng getNorthWest();
  LatLng getSouthEast();
}