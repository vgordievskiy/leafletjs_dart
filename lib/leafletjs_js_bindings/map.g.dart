// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-07-24T16:06:30.902Z

part of leafletjs_dart.bind.map;

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _LeafletMap
// **************************************************************************

@JsName('Map')
class LeafletMap extends Evented implements _LeafletMap {
  LeafletMap.created(JsObject o) : super.created(o);
  LeafletMap(var target, JsObject params)
      : this.created(new JsObject(context['L']['Map'], [target, params]));
  LatLng getCenter() =>
      __codec20.decode(asJsObject(this).callMethod('getCenter'));
  LatLngBounds getBounds() =>
      __codec21.decode(asJsObject(this).callMethod('getBounds'));

  addLayer(ILayer layer) =>
      asJsObject(this).callMethod('addLayer', [__codec22.encode(layer)]);
  removeLayer(ILayer layer) =>
      asJsObject(this).callMethod('removeLayer', [__codec22.encode(layer)]);
  bool hasLayer(ILayer layer) =>
      asJsObject(this).callMethod('hasLayer', [__codec22.encode(layer)]);

  invalidateSize({bool animate: false}) => asJsObject(this).callMethod(
      'invalidateSize', [
    () {
      final o = new JsObject(context['Object']);
      if (animate != null) o['animate'] = animate;
      return o;
    }()
  ]);

  IHandler get dragging => __codec19.decode(asJsObject(this)['dragging']);
  IHandler get doubleClickZoom =>
      __codec19.decode(asJsObject(this)['doubleClickZoom']);
  IHandler get scrollWheelZoom =>
      __codec19.decode(asJsObject(this)['scrollWheelZoom']);
  IHandler get boxZoom => __codec19.decode(asJsObject(this)['boxZoom']);
  IHandler get keyboard => __codec19.decode(asJsObject(this)['keyboard']);
  IHandler get tap => __codec19.decode(asJsObject(this)['tap']);
  IHandler get touchZoom => __codec19.decode(asJsObject(this)['touchZoom']);
}
/// codec for leafletjs_dart.bind.IHandler.IHandler
final __codec19 =
    new JsInterfaceCodec<IHandler>((o) => new IHandler.created(o));

/// codec for leafletjs_dart.bind.geo.LatLng
final __codec20 = new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o));

/// codec for leafletjs_dart.bind.geo.LatLngBounds
final __codec21 =
    new JsInterfaceCodec<LatLngBounds>((o) => new LatLngBounds.created(o));

/// codec for leafletjs_dart.bind.ILayer.ILayer
final __codec22 = new JsInterfaceCodec<ILayer>((o) => new ILayer.created(o));
