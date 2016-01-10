@JS('L')
library leafletjs_dart.bind.IHandler;

import 'package:js/js.dart';

@JS()
class IHandler {
  external factory IHandler();
  external enable();
  external disable();
  external bool enabled();
}
