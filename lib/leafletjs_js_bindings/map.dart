@JS('Leaflet')
library leafletjs_dart.bind.map;

import 'dart:js';
import 'package:js/js.dart';

import 'core.dart';
import 'geo.dart';

import 'ILayer.dart';
import 'IHandler.dart';

@anonymous
@JS()
class MapOptions {
  external factory MapOptions({
    List<ILayer> layers,
    LatLng center,
    int zoom
  });
}

@JS('Map')
class GMap extends Evented {
  external factory GMap(var target, MapOptions params);
  external LatLng getCenter();
  external LatLngBounds getBounds();
  
  external setView(LatLng center);
  external setZoom(int number);
  external panTo(LatLng center);
  external int getZoom();
  external addLayer(ILayer layer);
  external removeLayer(ILayer layer);
  external bool hasLayer(ILayer layer);
  
  external invalidateSize();
  @JS('invalidateSize')
  external invalidateSizeWithParams(JsObject params);
  
  external IHandler get dragging;
  external IHandler get doubleClickZoom;
  external IHandler get scrollWheelZoom;
  external IHandler get boxZoom;
  external IHandler get keyboard;
  external IHandler get tap;
  external IHandler get touchZoom;
}

@JS()
external GMap map(var target, MapOptions params);