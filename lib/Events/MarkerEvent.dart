library leafletjs_dart.Events.MarkerEvent;

export '../leafletjs_js_bindings/geo.dart';
import '../leafletjs_js_bindings/geo.dart' as L;
import '../leafletjs_js_bindings/Marker.dart' as L;
import '../leafletjs_js_bindings/Util.dart' as L;

import 'package:js_wrapping/js_wrapping.dart';
import 'package:observe/observe.dart';

class MarkerEvent extends ChangeRecord {
  String _type;
  L.LatLng _geoPnt = null;
  L.Marker _marker;

  MarkerEvent.fromJs(this._type, JsObject marker, [JsObject jsLatLng = null])
  {
    if(jsLatLng != null) _geoPnt = new L.LatLng.created(jsLatLng);
    _marker = new L.Marker.created(marker);
  }
  
  String get type => _type;
  L.LatLng get GeoPnt => _geoPnt;
  L.Marker get Marker => _marker;
  int get Id => L.stamp(L.toJs(_marker));
}