@JsName('L')
library leafletjs_dart.bind.Marker;

import 'dart:html';
import 'package:js_wrapping/js_wrapping.dart';

import 'core.dart';
import 'geo.dart';
import 'map.dart';

import 'ILayer.dart';

part 'Marker.g.dart';

abstract class _Marker extends Evented implements JsInterface, ILayer  {
  external factory _Marker(LatLng pnt, JsObject params);
  void addTo(LeafletMap map);
  LatLng getLatLng();
  setLatLng(LatLng pnt);
}