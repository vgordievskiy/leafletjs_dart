library leafletjs_dart;

import 'dart:html';
import 'dart:js';
import 'dart:async';

import 'package:polymer/polymer.dart';
import 'package:js_wrapping/js_wrapping.dart';

export 'Events/MouseEvent.dart';
export 'leafletjs_js_bindings/geo.dart';
export 'leafletjs_js_bindings/Icon.dart';

import 'leafletjs_js_bindings/map.dart' as L;
import 'leafletjs_js_bindings/ILayer.dart' as L;
import 'leafletjs_js_bindings/TileLayer.dart' as L;
import 'leafletjs_js_bindings/Marker.dart' as L;
import 'leafletjs_js_bindings/Icon.dart' as L;
import 'leafletjs_js_bindings/geo.dart' as L;
import 'leafletjs_js_bindings/Util.dart' as L;
import 'Events/MouseEvent.dart' as L;

JsObject toJs(var obj){
 if (obj is JsInterface) return asJsObject(obj);
 return new JsObject.jsify(obj);
}

final String _Imageurl = 'http://openlayers.org/en/v3.7.0/examples/data/icon.png';
final String map_css = "packages/leafletjs/3pp/leafletjs_0.7.3/leaflet.css";

class MapHelpers {
  static Map<String, Function> avaliableMaps = { 
    'OSM' : () => new L.TileLayer('http://{s}.tile.osm.org/{z}/{x}/{y}.png', toJs({}))
  }; 
  
  static L.TileLayer getMapLayer(String type) => avaliableMaps[type]();
}

@CustomTag('leafletjs-map')
class Leafletjs extends PolymerElement {
  static var SpbCoord = [59.95, 30.3];
  
  Leafletjs.created() : super.created();

  L.LeafletMap map;
  L.TileLayer mapLayer;
  
  @observable
  String map_type = "OSM";
  
  @reflectable
  L.LatLng Center;
  
  @reflectable
  L.LatLngBounds Region;
  
  L.Icon defMarkerIcon;
  L.LayerGroup _markersGroup;
  
  ready() {
    super.ready();
    _initMap();
    _InitDefaultIconStyle();
    _InitMarkerLayers();
    _InitListeners();
  }
  
  attached() {
    super.attached();
    shadowRoot.append(
      new StyleElement()..text = "@import '${map_css}';"
    );
  }

  asyncDeliverChanges() async => deliverChanges();
  
  _initMap() {
    var targetElement = $['leafletjs-map'];
    var params = {
      'center' : new JsObject.jsify(SpbCoord),
      'zoom'   : 10
    };
    map = new L.LeafletMap(targetElement, toJs(params));
    mapLayer = MapHelpers.getMapLayer(map_type)..addTo(map);
    
    if(map.tap!= null) map.tap.disable();
    
    new Future(() =>map.invalidateSize());
  }
  
  void _InitDefaultIconStyle() {
    /*Init marker style*/
    defMarkerIcon = new L.Icon(toJs({
      'iconUrl' : _Imageurl
    }));
  }
  
  void _InitMarkerLayers() {
    _markersGroup = new L.LayerGroup(toJs([]))..addTo(map);
  }
  
  void _InitListeners() {
    map.on('moveend', (var e){
      { /*Notify of visible region are changed*/
        L.LatLngBounds newRegion = map.getBounds();
        notifyPropertyChange(#Region, Region, newRegion);
        Region = newRegion;
      }
      { /*Notify of center are changed*/
        L.LatLng newCenter = map.getCenter();
        notifyPropertyChange(#Center, Center, newCenter);
        Center = newCenter;
      }
      asyncDeliverChanges();
    });
    map.on('dblclick', (JsObject e){
      L.MouseEvent evt = new L.MouseEvent.fromJs('dblclick', e['latlng']);
      notifyChange(evt);
      asyncDeliverChanges();
    });
  }
  
  int AddMarker(
    L.LatLng pnt,
    {
      L.Icon icon : null,
      String title : "",
      dynamic popup : null
    })
  {
    L.Icon usedIcon = icon != null ? icon : defMarkerIcon;
    L.Marker marker = new L.Marker(
      pnt,
      toJs({
        'icon'  : toJs(usedIcon),
        'title' : title
    }));
    
    if (popup!=null)  marker.bindPopup(popup);
    
    _markersGroup.addLayer(marker);
    return L.stamp(toJs(marker));
  }
  
  void ClearAllMarkers() {
    _markersGroup.clearLayers();
  }

}
