@JS('Leaflet.Util')
library leafletjs_dart.bind.Util;

import 'dart:js';
import 'package:js/js.dart';

@JS()
external int stamp(var obj);

String toJSON(JsObject obj) {
  JsFunction cntx = context['JSON']['stringify'];
  return cntx.apply([obj]);
}

JsObject toJs(var obj){
 return new JsObject.jsify(obj);
}