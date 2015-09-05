library leafletjs_dart.Events.MapEvents;

export '../leafletjs_js_bindings/geo.dart';
import '../leafletjs_js_bindings/geo.dart' as L;
import '../leafletjs_js_bindings/Marker.dart' as L;
import '../leafletjs_js_bindings/Util.dart' as L;

import 'package:js_wrapping/js_wrapping.dart';
import 'package:observe/observe.dart';

class MapEvent extends ChangeRecord {
  String _type;

  dynamic _data;
  
  MapEvent.fromJs(this._type, [this._data]);
  
  String get type => _type;
  dynamic get data => _data;
}