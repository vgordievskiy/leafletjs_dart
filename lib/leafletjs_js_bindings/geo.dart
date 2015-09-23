@JsName('L')
library leafletjs_dart.bind.geo;

import 'dart:html';
import 'package:js_wrapping/js_wrapping.dart';

part 'geo.g.dart';

abstract class _LatLng implements JsInterface  {
  static LatLng FromList(List<double> coord) {
    return new LatLng(coord[0], coord[1]);
  }
  external factory _LatLng(double lat, double lnt, [double alt = null]);
  double get lat;
  double get lng;
  
  bool operator==(LatLng other) {
    return lat.compareTo(other.lat) == 0 &&
           lng.compareTo(other.lng) == 0;
  }
}

abstract class _LatLngBounds implements JsInterface {
  external factory _LatLngBounds(LatLng SW, LatLng NE);
  bool isValid();
  LatLng getSouthWest();
  LatLng getNorthEast();
  LatLng getNorthWest();
  LatLng getSouthEast();
}