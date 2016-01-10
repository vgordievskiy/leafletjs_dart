@JS('L')
library leafletjs_dart.bind.core;

import 'package:js/js.dart';

@JS()
@anonymous
class Evented {
  external factory Evented();
  external on(String type, Function listener);
  external off(String type, Function listener);
  external once(String type, Function listener);
  external clearAllEventListeners();
}