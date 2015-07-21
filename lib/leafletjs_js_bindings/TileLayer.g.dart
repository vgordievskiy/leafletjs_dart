// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-07-21T17:07:45.051Z

part of leafletjs_dart.bind.TileLayer;

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _TileLayer
// **************************************************************************

class TileLayer extends JsInterface implements _TileLayer {
  TileLayer.created(JsObject o) : super.created(o);
  TileLayer(String url, JsObject params)
      : this.created(new JsObject(context['L']['TileLayer'], [url, params]));
  void addTo(LeafletMap map) {
    asJsObject(this).callMethod('addTo', [__codec2.encode(map)]);
  }
}
/// codec for leafletjs_dart.bind.map.LeafletMap
final __codec2 =
    new JsInterfaceCodec<LeafletMap>((o) => new LeafletMap.created(o));
