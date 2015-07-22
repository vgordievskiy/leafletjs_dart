// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-07-22T23:37:47.631Z

part of leafletjs_dart.bind.Marker;

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _Marker
// **************************************************************************

class Marker extends Evented implements ILayer, _Marker {
  Marker.created(JsObject o) : super.created(o);
  Marker(LatLng pnt, JsObject params) : this.created(new JsObject(
          context['L']['Marker'], [__codec14.encode(pnt), params]));
  void addTo(LeafletMap map) {
    asJsObject(this).callMethod('addTo', [__codec15.encode(map)]);
  }
  LatLng getLatLng() =>
      __codec14.decode(asJsObject(this).callMethod('getLatLng'));
  setLatLng(LatLng pnt) =>
      asJsObject(this).callMethod('setLatLng', [__codec14.encode(pnt)]);
}
/// codec for leafletjs_dart.bind.geo.LatLng
final __codec14 = new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o));

/// codec for leafletjs_dart.bind.map.LeafletMap
final __codec15 =
    new JsInterfaceCodec<LeafletMap>((o) => new LeafletMap.created(o));
