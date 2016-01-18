library leafletjs_dart.Events.MarkerEvent;

export '../leafletjs_js_bindings/geo.dart';
import '../leafletjs_js_bindings/geo.dart' as L;
import '../leafletjs_js_bindings/Marker.dart' as L;
import '../leafletjs_js_bindings/Util.dart' as L;

import 'package:observe/observe.dart';

class MarkerEvent extends ChangeRecord {
  String _type;
  L.LatLng _geoPnt = null;
  L.Marker _marker;

  MarkerEvent.fromJs(this._type, L.Marker marker, [L.LatLng jsLatLng = null])
  {
    if(jsLatLng != null) _geoPnt = jsLatLng;
    _marker = marker;
  }
  
  String get type => _type;
  L.LatLng get GeoPnt => _geoPnt;
  L.Marker get Marker => _marker;
  int get Id => L.stamp(_marker);
}