// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-07-22T13:08:33.760Z

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
      __codec4.decode(asJsObject(this).callMethod('getCenter'));
  LatLngBounds getBounds() =>
      __codec5.decode(asJsObject(this).callMethod('getBounds'));

  addLayer(ILayer layer) =>
      asJsObject(this).callMethod('addLayer', [__codec6.encode(layer)]);
  removeLayer(ILayer layer) =>
      asJsObject(this).callMethod('removeLayer', [__codec6.encode(layer)]);
  bool hasLayer(ILayer layer) =>
      asJsObject(this).callMethod('hasLayer', [__codec6.encode(layer)]);
}
/// codec for leafletjs_dart.bind.geo.LatLng
final __codec4 = new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o));

/// codec for leafletjs_dart.bind.geo.LatLngBounds
final __codec5 =
    new JsInterfaceCodec<LatLngBounds>((o) => new LatLngBounds.created(o));

/// codec for leafletjs_dart.bind.ILayer.ILayer
final __codec6 = new JsInterfaceCodec<ILayer>((o) => new ILayer.created(o));
