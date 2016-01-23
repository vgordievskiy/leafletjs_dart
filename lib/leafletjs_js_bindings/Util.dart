@JS()
library leafletjs_dart.bind.Util;

import 'dart:js';
import 'dart:convert';
import 'package:js/js.dart';

import 'package:simple_features/simple_features.dart';

import 'Marker.dart';

@JS('Leaflet.Util.stamp')
external int stamp(var obj);

@JS('JSON.stringify')
external String toJSON(var obj);

dynamic toDart(dynamic obj, [String type]){
  switch(type) {
    case 'GeoJson':
      return parseGeoJson(toJSON(obj));
  }
  
  return JSON.decode(toJSON(obj));
}

JsObject toJs(var obj){
 return new JsObject.jsify(obj);
}
