@JsName('L')
library leafletjs_dart.bind.map;

import 'dart:html';
import 'package:js_wrapping/js_wrapping.dart';

part 'map.g.dart';

@JsName('Map')
abstract class _LeafletMap implements JsInterface  {
  external factory _LeafletMap(var target, JsObject params); 
}