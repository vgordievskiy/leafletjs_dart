@JS('Leaflet.Util')
library leafletjs_dart.bind.Util;

import 'dart:js';
import 'package:js/js.dart';

int stamp(JsObject obj) {
  JsFunction cntx = context['Leaflet']['Util']['stamp'];
  return cntx.apply([obj]);
}

String toJSON(JsObject obj) {
  JsFunction cntx = context['JSON']['stringify'];
  return cntx.apply([obj]);
}

JsObject toJs(var obj){
 return new JsObject.jsify(obj);
}