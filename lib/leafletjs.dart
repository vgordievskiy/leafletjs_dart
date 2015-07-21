library leafletjs_dart;

import 'dart:html';
import 'dart:js';
import 'dart:async';

import 'package:polymer/polymer.dart';
import 'package:js_wrapping/js_wrapping.dart';

import 'leafletjs_js_bindings/map.dart' as L;
import 'leafletjs_js_bindings/TileLayer.dart' as L;

JsObject toJs(var obj) => new JsObject.jsify(obj);


final String _Imageurl = 'http://openlayers.org/en/v3.7.0/examples/data/icon.png';
final String map_css = "packages/leafletjs_dart/3pp/leafletjs_0.7.3/leaflet.css";

@CustomTag('leafletjs-map')
class Leafletjs extends PolymerElement {
  static var SpbCoord = [59.95, 30.3];
  
  Leafletjs.created() : super.created();

  L.LeafletMap map;
  L.TileLayer mapLayer;
  
  ready() {
    super.ready();
    _initMap();
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
      'zoom'   : 13
    };
    map = new L.LeafletMap(targetElement, toJs(params));
    
    {
      mapLayer = new L.TileLayer('http://{s}.tile.osm.org/{z}/{x}/{y}.png?{foo}', toJs({'foo': 'bar'}))..addTo(map);
    }
  }
  
  _initCustomObjectLayer() {
  }
  
  _initImageStyle() {
  }
  
  void _InitListeners() {
  }

}
