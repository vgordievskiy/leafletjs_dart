@JsName('L')
library leafletjs_dart.bind.map;

import 'dart:html';
import 'package:js_wrapping/js_wrapping.dart';

import 'core.dart';
import 'geo.dart';

import 'ILayer.dart';
import 'IHandler.dart';

part 'map.g.dart';

@JsName('Map')
abstract class _LeafletMap extends Evented implements JsInterface  {
  external factory _LeafletMap(var target, JsObject params);
  LatLng getCenter();
  LatLngBounds getBounds();
  
  setView(LatLng center);
  setZoom(int number);
  addLayer(ILayer layer);
  removeLayer(ILayer layer);
  bool hasLayer(ILayer layer);
  
  invalidateSize({bool animate : false});
  @JsName('invalidateSize')
      invalidateSizeWithParams(JsObject params);
  
  IHandler get dragging;
  IHandler get doubleClickZoom;
  IHandler get scrollWheelZoom;
  IHandler get boxZoom;
  IHandler get keyboard;
  IHandler get tap;
  IHandler get touchZoom;
}