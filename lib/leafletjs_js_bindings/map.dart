@JsName('L')
library leafletjs_dart.bind.map;

import 'dart:html';
import 'package:js_wrapping/js_wrapping.dart';

part 'map.g.dart';

abstract class _Map implements JsInterface  {
  external factory _Map(var target, JsObject params); 
}