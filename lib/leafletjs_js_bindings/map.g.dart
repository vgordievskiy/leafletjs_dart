// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-07-22T10:17:58.594Z

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
      __codec7.decode(asJsObject(this).callMethod('getCenter'));
  LatLngBounds getBounds() =>
      __codec8.decode(asJsObject(this).callMethod('getBounds'));
}
/// codec for leafletjs_dart.bind.geo.LatLng
final __codec7 = new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o));

/// codec for leafletjs_dart.bind.geo.LatLngBounds
final __codec8 =
    new JsInterfaceCodec<LatLngBounds>((o) => new LatLngBounds.created(o));
