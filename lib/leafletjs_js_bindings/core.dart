@JS('Leaflet')
library leafletjs_dart.bind.core;

import 'dart:js';
import 'package:func/func.dart';
import 'package:js/js.dart';

@anonymous
@JS()
class Evented {
  external factory Evented();
  external on(String type, VoidFunc1 listener);
  external off(String type, VoidFunc1 listener);
  external once(String type, VoidFunc1 listener);
  external clearAllEventListeners();
}