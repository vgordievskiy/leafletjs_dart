@JsName('L')
library leafletjs_dart.bind.TileLayer;

import 'dart:html';
import 'package:js_wrapping/js_wrapping.dart';

import 'core.dart';
import 'map.dart';

part 'TileLayer.g.dart';

abstract class _TileLayer extends Evented implements JsInterface  {
  external factory _TileLayer(String url, JsObject params);
  void addTo(LeafletMap map);
}