// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-08-04T12:56:32.449Z

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
          new JsObject(context['L']['LayerGroup'], [__codec7.encode(layers)]));
  addTo(LeafletMap map) =>
      asJsObject(this).callMethod('addTo', [__codec8.encode(map)]);
  addLayer(ILayer layer) =>
      asJsObject(this).callMethod('addLayer', [__codec9.encode(layer)]);
  removeLayer(ILayer layer) =>
      asJsObject(this).callMethod('removeLayer', [__codec9.encode(layer)]);

  removeLayerById(String id) =>
      asJsObject(this).callMethod('removeLayer', [id]);
  bool hasLayer(ILayer layer) =>
      asJsObject(this).callMethod('hasLayer', [__codec9.encode(layer)]);
  ILayer getLayer(String id) =>
      __codec9.decode(asJsObject(this).callMethod('getLayer', [id]));
  List<ILayer> getLayers() =>
      __codec10.decode(asJsObject(this).callMethod('getLayers'));
  clearLayers() => asJsObject(this).callMethod('clearLayers');
}
/// codec for dart.js.JsArray<dynamic>
final __codec7 = new JsListCodec<dynamic>(null);

/// codec for leafletjs_dart.bind.map.LeafletMap
final __codec8 =
    new JsInterfaceCodec<LeafletMap>((o) => new LeafletMap.created(o));

/// codec for leafletjs_dart.bind.ILayer.ILayer
final __codec9 = new JsInterfaceCodec<ILayer>((o) => new ILayer.created(o));

/// codec for dart.core.List<ILayer>
final __codec10 = new JsListCodec<ILayer>(__codec9);
