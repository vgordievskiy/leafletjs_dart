@JsName('L')
library leafletjs_dart.bind.geo;

import 'dart:html';
import 'package:js_wrapping/js_wrapping.dart';

part 'geo.g.dart';

abstract class _LatLng implements JsInterface  {
  external factory _LatLng();
  double get lat;
  double get lng;
}