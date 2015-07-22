// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-07-22T00:56:05.202Z

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
      __codec2.decode(asJsObject(this).callMethod('getCenter'));
}
/// codec for leafletjs_dart.bind.geo.LatLng
final __codec2 = new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o));
