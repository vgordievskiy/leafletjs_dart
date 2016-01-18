@JS('Leaflet')
library leafletjs_dart.Events.MouseEvent;

import 'package:js/js.dart';

export '../leafletjs_js_bindings/geo.dart';
import '../leafletjs_js_bindings/geo.dart' as L;

import 'package:observe/observe.dart';

@JS('MouseEvent')
class JsMouseEvent
{
  external L.LatLng get latlng; 
  external dynamic  get originalEvent;
  external dynamic  get target;
}

class MouseEvent extends ChangeRecord {
  String _type;
  L.LatLng _geoPnt;
  
  MouseEvent(this._type, this._geoPnt);
  MouseEvent.fromJs(this._type, L.LatLng jsLatLng)
  {
    _geoPnt = jsLatLng;
  }
  
  String get type => _type;
  L.LatLng get GeoPnt => _geoPnt;
}