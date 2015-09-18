@JsName('L')
library leafletjs_dart.bind.core;

import 'dart:html';
import 'package:js_wrapping/js_wrapping.dart';

part 'core.g.dart';

abstract class _Evented implements JsInterface  {
  external factory _Evented();
  on(String type, Function listener);
  off(String type, Function listener);
}