@JsName('L')
library leafletjs_dart.bind.IHandler;

import 'dart:html';
import 'package:js_wrapping/js_wrapping.dart';

part 'IHandler.g.dart';

abstract class _IHandler implements JsInterface  {
  external factory _IHandler();
  enable();
  disable();
  bool enabled();
}
