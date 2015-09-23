// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-09-23T00:24:55.551Z

part of leafletjs_dart.bind.geo;

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _LatLng
// **************************************************************************

class LatLng extends JsInterface implements _LatLng {
  static LatLng FromList(List<double> coord) {
    return new LatLng(coord[0], coord[1]);
  }
  LatLng.created(JsObject o) : super.created(o);
  LatLng(double lat, double lnt, [double alt = null])
      : this.created(new JsObject(context['L']['LatLng'], [lat, lnt, alt]));
  double get lat => asJsObject(this)['lat'];
  double get lng => asJsObject(this)['lng'];

  bool operator ==(LatLng other) {
    return lat.compareTo(other.lat) == 0 && lng.compareTo(other.lng) == 0;
  }
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _LatLngBounds
// **************************************************************************

class LatLngBounds extends JsInterface implements _LatLngBounds {
  LatLngBounds.created(JsObject o) : super.created(o);
  LatLngBounds(LatLng SW, LatLng NE) : this.created(new JsObject(
          context['L']['LatLngBounds'], [
        __codec2.encode(SW),
        __codec2.encode(NE)
      ]));
  bool isValid() => asJsObject(this).callMethod('isValid');
  LatLng getSouthWest() =>
      __codec2.decode(asJsObject(this).callMethod('getSouthWest'));
  LatLng getNorthEast() =>
      __codec2.decode(asJsObject(this).callMethod('getNorthEast'));
  LatLng getNorthWest() =>
      __codec2.decode(asJsObject(this).callMethod('getNorthWest'));
  LatLng getSouthEast() =>
      __codec2.decode(asJsObject(this).callMethod('getSouthEast'));
}
/// codec for leafletjs_dart.bind.geo.LatLng
final __codec2 = new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o));
