library leafletjs_dart;

import 'dart:html';
import 'dart:js';
import 'dart:async';
import 'dart:math';

import 'package:polymer/polymer.dart';

export 'Events/MouseEvent.dart';
export 'Events/MarkerEvent.dart';
export 'Events/MapEvent.dart';
export 'Events/TileLayerEvent.dart';
export 'leafletjs_js_bindings/geo.dart';
export 'leafletjs_js_bindings/Icon.dart';
export 'leafletjs_js_bindings/Marker.dart';
export 'leafletjs_js_bindings/ILayer.dart';
export 'leafletjs_js_bindings/Util.dart';

import 'leafletjs_js_bindings/map.dart' as L;
import 'leafletjs_js_bindings/ILayer.dart' as L;
import 'leafletjs_js_bindings/IHandler.dart' as L;
import 'leafletjs_js_bindings/TileLayer.dart' as L;
import 'leafletjs_js_bindings/Marker.dart' as L;
import 'leafletjs_js_bindings/Icon.dart' as L;
import 'leafletjs_js_bindings/geo.dart' as L;
import 'leafletjs_js_bindings/Util.dart' as L;
import 'Events/MouseEvent.dart' as L;
import 'Events/MarkerEvent.dart' as L;
import 'Events/MapEvent.dart' as L;
import 'Events/TileLayerEvent.dart' as L;

toJs(var obj) => obj;

final String _leafletDefMarker = 'packages/leafletjs/3pp/leafletjs_0.7.3/images/marker-icon.png';
final String _Imageurl = 'http://openlayers.org/en/v3.7.0/examples/data/icon.png';
final String map_css = "packages/leafletjs/3pp/leafletjs_0.7.3/leaflet.css";

class MapHelpers {
  static Map<String, Function> avaliableMaps = { 
    'OSM' : () => L.tileLayer('http://{s}.tile.osm.org/{z}/{x}/{y}.png',
                               new L.TileOptions(
                                   attribution : '&copy; <a href="http://osm.org/copyright">OpenStreetMap</a> contributors')),
    'OSM-Surfer' :() =>  L.tileLayer('http://openmapsurfer.uni-hd.de/tiles/roads/x={x}&y={y}&z={z}',
                                      new L.TileOptions( attribution : '''Imagery from
                                                         <a href="http://giscience.uni-hd.de/">
                                                         GIScience Research Group @ University of Heidelberg
                                                         </a>
                                                         &mdash; Map data &copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'''
                                    )),
    'OSM-Night' : () =>  L.tileLayer('http://{s}.tile.osm.kosmosnimki.ru/night/{z}/{x}/{y}.png',
                                     new L.TileOptions( attribution: '&copy; <a href="http://osm.org/copyright">OpenStreetMap</a> and http://kosmosnimki.ru contributors')),
    'CartoDB-Dark' : () =>  L.tileLayer('http://{s}.basemaps.cartocdn.com/dark_all/{z}/{x}/{y}.png',
                                        new L.TileOptions( attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a> &copy; <a href="http://cartodb.com/attributions">CartoDB</a>',
                                                           subdomains: 'abcd'))                                     
  }; 

  static L.TileLayer getMapLayer(String type) => avaliableMaps[type]();
}

@CustomTag('leafletjs-map')
class Leafletjs extends PolymerElement {
  
  Leafletjs.created() : super.created();

  L.GMap map;
  L.TileLayer mapLayer;
  
  @observable
  String map_type = "OSM";
  @observable
  List<double> start_point = [0.0, 0.0];
  
  
  @reflectable
  L.LatLng Center;
  
  @reflectable
  L.LatLngBounds Region;
  
  L.Icon defMarkerIcon;
  L.LayerGroup _markersGroup;
  
  ready() {
    super.ready();
    _initMap();
    _InitDefaultIconStyle();
    _InitMarkerLayers();
    _InitListeners();
  }
  
  attached() {
    super.attached();
    shadowRoot.append(
      new StyleElement()..text = "@import '${map_css}';"
    );
  }

  asyncDeliverChanges() async => deliverChanges();
  
  _initMap() {
    try {
      context['Leaflet'] = context['L'].callMethod('noConflict');
    } catch(e){}

    var targetElement = $['leafletjs-map'];
    L.MapOptions params = new L.MapOptions(
        center: L.LatLng.FromList(start_point),
        zoom: 10
    ); 
    map = L.map(targetElement, params);
    mapLayer = MapHelpers.getMapLayer(map_type)..addTo(map);
    
    if(map.tap!= null) map.tap.disable();
    
    new Future(() =>map.invalidateSize());
  }
  
  void _InitDefaultIconStyle() {
    /*Init marker style*/
    ImageElement image =  new ImageElement(src: _leafletDefMarker);
    image.onLoad.listen((var el){
      defMarkerIcon = new L.Icon(new L.IconOptions(
        iconUrl :_leafletDefMarker,
        iconAnchor: [image.width ~/ 2, image.height],
        popupAnchor: [image.width ~/(-2), image.height*(-1)]
      ));
    });
  }
  
  void _InitMarkerLayers() {
    _markersGroup = new L.LayerGroup([])..addTo(map);
  }
  
  _fireMapEvent(String name) {
    L.MapEvent evt = new L.MapEvent.fromJs(name);
    notifyChange(evt);
    asyncDeliverChanges();
  }
  
  void _InitListeners() {
    map.on('moveend', allowInterop((var e){
      { /*Notify of visible region are changed*/
        L.LatLngBounds newRegion = map.getBounds();
        notifyPropertyChange(#Region, Region, newRegion);
        Region = newRegion;
      }
      { /*Notify of center are changed*/
        L.LatLng newCenter = map.getCenter();
        notifyPropertyChange(#Center, Center, newCenter);
        Center = newCenter;
      }
      asyncDeliverChanges();
    }));
    map.on('dblclick', allowInterop((var e){
      L.MouseEvent evt = new L.MouseEvent.fromJs('dblclick', e['latlng']);
      notifyChange(evt);
      asyncDeliverChanges();
    }));
    map.on('click', allowInterop((var e){
      L.MouseEvent evt = new L.MouseEvent.fromJs('click', e['latlng']);
      notifyChange(evt);
      asyncDeliverChanges();
    }));
    map.on('viewreset', allowInterop((var e) => _fireMapEvent('viewreset')));
    map.on('zoomlevelschange', allowInterop((var e) => _fireMapEvent('zoomlevelschange')));
    map.on('resize', allowInterop((var e) =>  Invalidatesize()));
    map.on('zoomstart', allowInterop((var e) => _fireMapEvent('zoomstart')));
    map.on('zoomend', allowInterop((var e) => _fireMapEvent('zoomend')));
    mapLayer.on('load', allowInterop((var e){
      L.TileLayerEvent evt = new L.TileLayerEvent.fromJs('load', 'baseMap');
      notifyChange(evt);
      asyncDeliverChanges();
    }));
  }
  
  _initMarkerListener(L.Marker marker) {
    marker.on('click', allowInterop((var e){
      L.MarkerEvent evt = new L.MarkerEvent.fromJs('click', e['target'], e['latlng']);
      notifyChange(evt);
      asyncDeliverChanges();
    }));
  }
  
  Future SetCenter(L.LatLng pnt) {
    Completer comp = new Completer();
    if(L.compareGeoPnt(Center, pnt, 6)) {
      return new Future.value();
    }
    map.once('moveend', allowInterop((var e) {
      { /*Notify of center are changed*/
        L.LatLng newCenter = map.getCenter();
        notifyPropertyChange(#Center, Center, newCenter);
        Center = newCenter;
      }
      asyncDeliverChanges();
      comp.complete();
    }));
    map.panTo(pnt);
    return comp.future;
  }
  
  Future SetZoom(int number) {
    Completer comp = new Completer();
    if(number == map.getZoom()) {
      return new Future.value();
    }
    map.once('zoomend', allowInterop((_) => comp.complete()));
    map.setZoom(number);
    return comp.future;
  }
  
  int GetZoom() => map.getZoom();
  
  Future Invalidatesize() {
   return new Future.delayed(new Duration(milliseconds: 300), () =>map.invalidateSize());
  }
  
  int AddMarker(
    L.LatLng pnt,
    {
      L.Icon icon : null,
      String title : "",
      dynamic popup : null
    })
  {
    L.Icon usedIcon = icon != null ? icon : defMarkerIcon;
    L.Marker marker = new L.Marker(
      pnt,
      new L.MarkerOptions(icon: usedIcon, title: title)
    );
    
    if (popup!=null)  marker.bindPopup(popup , new L.PopupOptions());
    
    _markersGroup.addLayer(marker);
    _initMarkerListener(marker);
    return L.stamp(marker);
  }
  
  L.Marker GetMarker(int id) {
    return _markersGroup.getLayer("$id");
  }
  
  Map<int, L.Marker> GetMarkers() {
    Map<int, L.Marker> ret = new Map();
    for(L.ILayer layer in _markersGroup.getLayers()) {
      ret[L.stamp(layer)] = layer;
    }
    return ret;
  }
  
  RemoveMarker(int id) {
    L.ILayer layer = _markersGroup.getLayer("$id");
    _markersGroup.removeLayer(layer);
  }
  
  void ClearAllMarkers() {
    _markersGroup.clearLayers();
  }
  
  L.IHandler get dragging => map.dragging;
  L.IHandler get doubleClickZoom => map.doubleClickZoom;
  L.IHandler get scrollWheelZoom => map.scrollWheelZoom;
  L.IHandler get boxZoom => map.boxZoom;
  L.IHandler get keyboard => map.keyboard;
  L.IHandler get tap => map.tap;
  L.IHandler get touchZoom => map.touchZoom;

}
