// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
library leafletjs_dart;

import 'dart:html';
import 'dart:js';
import 'dart:async';

import 'package:polymer/polymer.dart';
import 'package:js_wrapping/js_wrapping.dart';

import 'leafletjs_js_bindings/map.dart' as L;

JsObject toJs(var obj) => new JsObject.jsify(obj);


final String _Imageurl = 'http://openlayers.org/en/v3.7.0/examples/data/icon.png';
final String map_css = "packages/leafletjs_dart/3pp/leafletjs_0.7.3/leaflet.css";

@CustomTag('leafletjs-map')
class Leafletjs extends PolymerElement {
  static var SpbCoord = [30.3, 59.95];
  static final String LatLongStd = "EPSG:4326";
  static final String CartesianStd = "EPSG:900913";
  
  Leafletjs.created() : super.created();

  L.Map map;
  
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
    map = new L.Map(targetElement, toJs(params)); 
  }
  
  _initCustomObjectLayer() {
  }
  
  _initImageStyle() {
  }
  
  void _InitListeners() {
  }

}
