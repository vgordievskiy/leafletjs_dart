library leafletjs_dart.Events.TileLayerEvents;

import 'package:js_wrapping/js_wrapping.dart';
import 'package:observe/observe.dart';

class TileLayerEvent extends ChangeRecord {
  String _type;

  dynamic _data;
  
  TileLayerEvent.fromJs(this._type, [this._data]);
  
  String get type => _type;
  dynamic get data => _data;
}