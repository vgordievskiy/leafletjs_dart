@JS('Leaflet')
library leafletjs_dart.bind.TileLayer;

import 'dart:js';
import 'package:js/js.dart';

import 'core.dart';
import 'map.dart' as L;

import "ILayer.dart";

@anonymous
@JS()
class TileOptions {
  external factory TileOptions({
    String attribution,
    String subdomains
  });
}

@JS()
class TileLayer extends Evented implements ILayer  {
  external factory TileLayer(String url, TileOptions params);
  external void addTo(L.GMap map);
}

@JS()
external TileLayer tileLayer(String urlTemplate, TileOptions params);