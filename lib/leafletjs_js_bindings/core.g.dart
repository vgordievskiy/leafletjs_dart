// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-09-18T15:57:15.270Z

part of leafletjs_dart.bind.core;

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _Evented
// **************************************************************************

class Evented extends JsInterface implements _Evented {
  Evented.created(JsObject o) : super.created(o);
  Evented() : this.created(new JsObject(context['L']['Evented']));
  on(String type, Function listener) =>
      asJsObject(this).callMethod('on', [type, listener]);
  off(String type, Function listener) =>
      asJsObject(this).callMethod('off', [type, listener]);
  once(String type, Function listener) =>
      asJsObject(this).callMethod('once', [type, listener]);
  clearAllEventListeners() =>
      asJsObject(this).callMethod('clearAllEventListeners');
}
