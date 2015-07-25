library leafletjs_dart.Events.MouseEvent;

export '../leafletjs_js_bindings/geo.dart';
import '../leafletjs_js_bindings/geo.dart' as L;

import 'package:js_wrapping/js_wrapping.dart';
import 'package:observe/observe.dart';

class MouseEvent extends ChangeRecord {
  String _type;
  L.LatLng _geoPnt;
  
  MouseEvent(this._type, this._geoPnt);
  MouseEvent.fromJs(this._type, JsObject jsLatLng)
  {
    _geoPnt = new L.LatLng.created(jsLatLng);
  }
  
  String get type => _type;
  L.LatLng get GeoPnt => _geoPnt;
}