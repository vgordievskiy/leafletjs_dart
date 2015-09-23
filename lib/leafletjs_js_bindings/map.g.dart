// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-09-23T01:01:22.832Z

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
      __codec6.decode(asJsObject(this).callMethod('getCenter'));
  LatLngBounds getBounds() =>
      __codec7.decode(asJsObject(this).callMethod('getBounds'));

  setView(LatLng center) =>
      asJsObject(this).callMethod('setView', [__codec6.encode(center)]);
  setZoom(int number) => asJsObject(this).callMethod('setZoom', [number]);
  panTo(LatLng center) =>
      asJsObject(this).callMethod('panTo', [__codec6.encode(center)]);
  int getZoom() => asJsObject(this).callMethod('getZoom');
  addLayer(ILayer layer) =>
      asJsObject(this).callMethod('addLayer', [__codec8.encode(layer)]);
  removeLayer(ILayer layer) =>
      asJsObject(this).callMethod('removeLayer', [__codec8.encode(layer)]);
  bool hasLayer(ILayer layer) =>
      asJsObject(this).callMethod('hasLayer', [__codec8.encode(layer)]);

  invalidateSize({bool animate: false}) => asJsObject(this).callMethod(
      'invalidateSize', [
    () {
      final o = new JsObject(context['Object']);
      if (animate != null) o['animate'] = animate;
      return o;
    }()
  ]);

  invalidateSizeWithParams(JsObject params) =>
      asJsObject(this).callMethod('invalidateSize', [params]);

  IHandler get dragging => __codec5.decode(asJsObject(this)['dragging']);
  IHandler get doubleClickZoom =>
      __codec5.decode(asJsObject(this)['doubleClickZoom']);
  IHandler get scrollWheelZoom =>
      __codec5.decode(asJsObject(this)['scrollWheelZoom']);
  IHandler get boxZoom => __codec5.decode(asJsObject(this)['boxZoom']);
  IHandler get keyboard => __codec5.decode(asJsObject(this)['keyboard']);
  IHandler get tap => __codec5.decode(asJsObject(this)['tap']);
  IHandler get touchZoom => __codec5.decode(asJsObject(this)['touchZoom']);
}
/// codec for leafletjs_dart.bind.IHandler.IHandler
final __codec5 = new JsInterfaceCodec<IHandler>((o) => new IHandler.created(o));

/// codec for leafletjs_dart.bind.geo.LatLng
final __codec6 = new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o));

/// codec for leafletjs_dart.bind.geo.LatLngBounds
final __codec7 =
    new JsInterfaceCodec<LatLngBounds>((o) => new LatLngBounds.created(o));

/// codec for leafletjs_dart.bind.ILayer.ILayer
final __codec8 = new JsInterfaceCodec<ILayer>((o) => new ILayer.created(o));
