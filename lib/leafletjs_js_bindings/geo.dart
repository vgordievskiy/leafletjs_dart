@JsName('L')
library leafletjs_dart.bind.geo;

import 'dart:html';
import 'dart:math';
import 'package:js_wrapping/js_wrapping.dart';

part 'geo.g.dart';

abstract class _LatLng implements JsInterface  {
  static LatLng FromList(List<double> coord) {
    return new LatLng(coord[0], coord[1]);
  }
  external factory _LatLng(double lat, double lnt, [double alt = null]);
  double get lat;
  double get lng;
  
  bool equals(LatLng other);
  
  bool operator==(LatLng other) {
    return this.equals(other);
  }
}

bool compareGeoPnt(LatLng l, LatLng r, int precision) {
  double prec = 9/pow(10, precision);
  double t1 = l.lat.abs() - r.lat.abs();
  double t2 = l.lng.abs() - r.lng.abs();
  return (l.lat.abs() - r.lat.abs()).abs() < prec &&
         (l.lng.abs() - r.lng.abs()).abs() < prec;
}

abstract class _LatLngBounds implements JsInterface {
  external factory _LatLngBounds(LatLng SW, LatLng NE);
  bool isValid();
  LatLng getSouthWest();
  LatLng getNorthEast();
  LatLng getNorthWest();
  LatLng getSouthEast();
}