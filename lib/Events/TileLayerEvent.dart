library leafletjs_dart.Events.TileLayerEvents;

import 'package:js_wrapping/js_wrapping.dart';
import 'package:observe/observe.dart';

class TileLayerEvent extends ChangeRecord {
  String _type;
  String _layerName;
  
  dynamic _data;
  
  TileLayerEvent.fromJs(this._type, this._layerName, [this._data]);
  
  String get type => _type;
  String get layerName => _layerName;
  dynamic get data => _data;
}