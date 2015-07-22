// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-07-22T10:17:58.511Z

part of leafletjs_dart.bind.TileLayer;

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _TileLayer
// **************************************************************************

class TileLayer extends Evented implements _TileLayer {
  TileLayer.created(JsObject o) : super.created(o);
  TileLayer(String url, JsObject params)
      : this.created(new JsObject(context['L']['TileLayer'], [url, params]));
  void addTo(LeafletMap map) {
    asJsObject(this).callMethod('addTo', [__codec5.encode(map)]);
  }
}
/// codec for leafletjs_dart.bind.map.LeafletMap
final __codec5 =
    new JsInterfaceCodec<LeafletMap>((o) => new LeafletMap.created(o));
