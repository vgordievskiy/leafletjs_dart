@JS('Leaflet')
library leafletjs_dart.bind.geo;

import 'dart:math';
import 'package:js/js.dart';

@JS()
class LatLng {
  static LatLng FromList(List<double> coord) {
    return new LatLng(coord[0], coord[1]);
  }
  external factory LatLng(double lat, double lnt, [double alt = null]);
  external double get lat;
  external double get lng;
  
  external bool equals(LatLng other);
}

bool compareGeoPnt(LatLng l, LatLng r, int precision) {
  double prec = 9/pow(10, precision);
  return (l.lat.abs() - r.lat.abs()).abs() < prec &&
         (l.lng.abs() - r.lng.abs()).abs() < prec;
}

@JS()
class LatLngBounds {
  external factory LatLngBounds(LatLng SW, LatLng NE);
  external bool isValid();
  external LatLng getSouthWest();
  external LatLng getNorthEast();
  external LatLng getNorthWest();
  external LatLng getSouthEast();
}