// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-07-23T17:32:05.392Z

part of leafletjs_dart.bind.Marker;

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _Marker
// **************************************************************************

class Marker extends Evented implements ILayer, _Marker {
  Marker.created(JsObject o) : super.created(o);
  Marker(LatLng pnt, JsObject params) : this.created(
          new JsObject(context['L']['Marker'], [__codec3.encode(pnt), params]));
  void addTo(LeafletMap map) {
    asJsObject(this).callMethod('addTo', [__codec4.encode(map)]);
  }
  LatLng getLatLng() =>
      __codec3.decode(asJsObject(this).callMethod('getLatLng'));
  setLatLng(LatLng pnt) =>
      asJsObject(this).callMethod('setLatLng', [__codec3.encode(pnt)]);
  bindPopup(dynamic el) => asJsObject(this).callMethod('bindPopup', [el]);
}
/// codec for leafletjs_dart.bind.geo.LatLng
final __codec3 = new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o));

/// codec for leafletjs_dart.bind.map.LeafletMap
final __codec4 =
    new JsInterfaceCodec<LeafletMap>((o) => new LeafletMap.created(o));
