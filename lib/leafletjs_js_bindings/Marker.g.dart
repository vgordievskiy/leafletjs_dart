// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-08-14T22:45:08.096Z

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
  bindPopup(dynamic el, JsObject params) =>
      asJsObject(this).callMethod('bindPopup', [el, params]);
  JsObject toGeoJSON() => asJsObject(this).callMethod('toGeoJSON');
  openPopup() => asJsObject(this).callMethod('openPopup');
  closePopup() => asJsObject(this).callMethod('closePopup');
  togglePopup() => asJsObject(this).callMethod('togglePopup');
}
/// codec for leafletjs_dart.bind.geo.LatLng
final __codec3 = new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o));

/// codec for leafletjs_dart.bind.map.LeafletMap
final __codec4 =
    new JsInterfaceCodec<LeafletMap>((o) => new LeafletMap.created(o));
