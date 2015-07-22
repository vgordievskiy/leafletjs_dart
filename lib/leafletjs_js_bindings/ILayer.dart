@JsName('L')
library leafletjs_dart.bind.ILayer;

import 'dart:html';
import 'package:js_wrapping/js_wrapping.dart';

import 'core.dart';
import 'map.dart';

part 'ILayer.g.dart';

abstract class _ILayer implements JsInterface {
}

abstract class _LayerGroup implements JsInterface {
  external factory _LayerGroup(JsArray layers);
  addTo(LeafletMap map);
  addLayer(ILayer layer);
  removeLayer(ILayer layer);
  bool hasLayer(ILayer layer);
  clearLayers();
}