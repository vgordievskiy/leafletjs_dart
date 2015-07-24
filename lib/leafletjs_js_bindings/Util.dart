@JsName('L.Util')
library leafletjs_dart.bind.Util;

import 'dart:html';
import 'package:js_wrapping/js_wrapping.dart';

int stamp(JsObject obj) {
  JsFunction cntx = context['L']['Util']['stamp'];
  return cntx.apply([obj]);
}