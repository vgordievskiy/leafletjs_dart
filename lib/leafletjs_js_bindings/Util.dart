@JS()
library leafletjs_dart.bind.Util;

import 'dart:js';
import 'package:js/js.dart';

@JS('Leaflet.Util.stamp')
external int stamp(var obj);

@JS('JSON.stringify')
external String toJSON(var obj);

JsObject toJs(var obj){
 return new JsObject.jsify(obj);
}
