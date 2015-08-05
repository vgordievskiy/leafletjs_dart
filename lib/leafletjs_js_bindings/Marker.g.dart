// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-08-04T12:56:32.463Z

part of leafletjs_dart.bind.Marker;

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _Marker
// **************************************************************************

class Marker extends Evented implements ILayer, _Marker {
  Marker.created(JsObject o) : super.created(o);
  Marker(LatLng pnt, JsObject params) : this.created(new JsObject(
          context['L']['Marker'], [__codec11.encode(pnt), params]));
  void addTo(LeafletMap map) {
    asJsObject(this).callMethod('addTo', [__codec12.encode(map)]);
  }
  LatLng getLatLng() =>
      __codec11.decode(asJsObject(this).callMethod('getLatLng'));
  setLatLng(LatLng pnt) =>
      asJsObject(this).callMethod('setLatLng', [__codec11.encode(pnt)]);
  bindPopup(dynamic el, JsObject params) =>
      asJsObject(this).callMethod('bindPopup', [el, params]);
  JsObject toGeoJSON() => asJsObject(this).callMethod('toGeoJSON');
}
/// codec for leafletjs_dart.bind.geo.LatLng
final __codec11 = new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o));

/// codec for leafletjs_dart.bind.map.LeafletMap
final __codec12 =
    new JsInterfaceCodec<LeafletMap>((o) => new LeafletMap.created(o));
