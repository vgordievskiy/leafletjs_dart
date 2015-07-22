// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-07-22T13:18:09.700Z

part of leafletjs_dart.bind.ILayer;

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _ILayer
// **************************************************************************

class ILayer extends JsInterface implements _ILayer {
  ILayer.created(JsObject o) : super.created(o);
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _LayerGroup
// **************************************************************************

class LayerGroup extends JsInterface implements _LayerGroup {
  LayerGroup.created(JsObject o) : super.created(o);
  LayerGroup(JsArray layers) : this.created(
          new JsObject(context['L']['LayerGroup'], [__codec4.encode(layers)]));
  addTo(LeafletMap map) =>
      asJsObject(this).callMethod('addTo', [__codec5.encode(map)]);
  addLayer(ILayer layer) =>
      asJsObject(this).callMethod('addLayer', [__codec6.encode(layer)]);
  removeLayer(ILayer layer) =>
      asJsObject(this).callMethod('removeLayer', [__codec6.encode(layer)]);
  bool hasLayer(ILayer layer) =>
      asJsObject(this).callMethod('hasLayer', [__codec6.encode(layer)]);
  clearLayers() => asJsObject(this).callMethod('clearLayers');
}
/// codec for dart.js.JsArray<dynamic>
final __codec4 = new JsListCodec<dynamic>(null);

/// codec for leafletjs_dart.bind.map.LeafletMap
final __codec5 =
    new JsInterfaceCodec<LeafletMap>((o) => new LeafletMap.created(o));

/// codec for leafletjs_dart.bind.ILayer.ILayer
final __codec6 = new JsInterfaceCodec<ILayer>((o) => new ILayer.created(o));
