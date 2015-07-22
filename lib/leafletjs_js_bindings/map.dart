@JsName('L')
library leafletjs_dart.bind.map;

import 'dart:html';
import 'package:js_wrapping/js_wrapping.dart';

import 'core.dart';
import 'geo.dart';

part 'map.g.dart';

@JsName('Map')
abstract class _LeafletMap extends Evented implements JsInterface  {
  external factory _LeafletMap(var target, JsObject params);
  LatLng getCenter();
  LatLngBounds getBounds();
}