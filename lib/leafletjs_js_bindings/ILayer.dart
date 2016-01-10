@JS('Leaflet')
library leafletjs_dart.bind.ILayer;

import 'dart:js';
import 'package:js/js.dart';

import 'core.dart';
import 'map.dart' as L;

@JS()
class ILayer {}

@JS()
class LayerGroup {
  external factory LayerGroup(List<ILayer> layers);
  external addTo(L.GMap map);
  external addLayer(ILayer layer);
  external removeLayer(ILayer layer);
  @JS('removeLayer')
  external removeLayerById(String id);
  external bool hasLayer(ILayer layer);
  external ILayer getLayer(String id);
  external List<ILayer> getLayers();
  external clearLayers();
}