@JS('Leaflet')
library leafletjs_dart.bind.Icon;

import 'dart:js';
import 'package:js/js.dart';

@anonymous
@JS()
class IconOptions {
  external factory IconOptions({
      String iconUrl,
      List iconAnchor,
      List popupAnchor
  });
}

@JS()
class Icon {
  external factory Icon(IconOptions params);
}
