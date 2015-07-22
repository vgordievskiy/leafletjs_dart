library leafletjs_dart;

import 'dart:html';
import 'dart:js';
import 'dart:async';

import 'package:polymer/polymer.dart';
import 'package:js_wrapping/js_wrapping.dart';

import 'leafletjs_js_bindings/map.dart' as L;
import 'leafletjs_js_bindings/ILayer.dart' as L;
import 'leafletjs_js_bindings/TileLayer.dart' as L;
import 'leafletjs_js_bindings/Marker.dart' as L;
import 'leafletjs_js_bindings/Icon.dart' as L;
import 'leafletjs_js_bindings/geo.dart' as L;

JsObject toJs(var obj){
 if (obj is JsInterface) return asJsObject(obj);
 return new JsObject.jsify(obj);
}


final String _Imageurl = 'http://openlayers.org/en/v3.7.0/examples/data/icon.png';
final String map_css = "packages/leafletjs_dart/3pp/leafletjs_0.7.3/leaflet.css";

@CustomTag('leafletjs-map')
class Leafletjs extends PolymerElement {
  static var SpbCoord = [59.95, 30.3];
  
  Leafletjs.created() : super.created();

  L.LeafletMap map;
  L.TileLayer mapLayer;
  
  @reflectable
  L.LatLng Center;
  
  @reflectable
  L.LatLngBounds Region;
  
  L.Icon defMarkerIcon;
  L.LayerGroup _markersGroup;
  
  ready() {
    super.ready();
    _initMap();
    _InitListeners();
  }
  
  attached() {
    super.attached();
    shadowRoot.append(
      new StyleElement()..text = "@import '${map_css}';"
    );
  }

  notifyChanges() async => deliverChanges();
  
  _initMap() {
    var targetElement = $['leafletjs-map'];
    var params = {
      'center' : new JsObject.jsify(SpbCoord),
      'zoom'   : 10
    };
    map = new L.LeafletMap(targetElement, toJs(params));
    
    { /*for test only - move other place!*/
      mapLayer = new L.TileLayer('http://{s}.tile.osm.org/{z}/{x}/{y}.png?{foo}', toJs({'foo': 'bar'}))..addTo(map);
    }
    { /*Init marker style*/
      defMarkerIcon = new L.Icon(toJs({
        'iconUrl' : _Imageurl
      }));
    }
    {
      _markersGroup = new L.LayerGroup(toJs([]))..addTo(map);
      L.Marker marker = new L.Marker(L.LatLng.FromList(SpbCoord), toJs({ 'icon' : toJs(defMarkerIcon)}));
      _markersGroup.addLayer(marker);
    }
  }
  
  void _InitListeners() {
    map.on('moveend', (var e){
      L.LatLng pnt = map.getCenter();
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
      notifyChanges();
    });
  }

}
