// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-07-22T10:17:58.561Z

part of leafletjs_dart.bind.geo;

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _LatLng
// **************************************************************************

class LatLng extends JsInterface implements _LatLng {
  LatLng.created(JsObject o) : super.created(o);
  LatLng(double lat, double lnt, [double alt = null])
      : this.created(new JsObject(context['L']['LatLng'], [lat, lnt, alt]));
  double get lat => asJsObject(this)['lat'];
  double get lng => asJsObject(this)['lng'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _LatLngBounds
// **************************************************************************

class LatLngBounds extends JsInterface implements _LatLngBounds {
  LatLngBounds.created(JsObject o) : super.created(o);
  LatLngBounds(LatLng SW, LatLng NE) : this.created(new JsObject(
          context['L']['LatLngBounds'], [
        __codec6.encode(SW),
        __codec6.encode(NE)
      ]));
  bool isValid() => asJsObject(this).callMethod('isValid');
  LatLng getSouthWest() =>
      __codec6.decode(asJsObject(this).callMethod('getSouthWest'));
  LatLng getNorthEast() =>
      __codec6.decode(asJsObject(this).callMethod('getNorthEast'));
  LatLng getNorthWest() =>
      __codec6.decode(asJsObject(this).callMethod('getNorthWest'));
  LatLng getSouthEast() =>
      __codec6.decode(asJsObject(this).callMethod('getSouthEast'));
}
/// codec for leafletjs_dart.bind.geo.LatLng
final __codec6 = new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o));
