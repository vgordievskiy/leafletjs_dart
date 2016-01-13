import 'package:angular2/bootstrap.dart' as ng_bootstrap;
import 'package:angular2/angular2.dart';
import 'package:leafletjs/leafletjs.dart';


@Component( 
  selector: 'start-point',
  template: '''<leafletjs-map map-type='OSM-Night'></leafletjs-map>''',
  directives: const [Leafletjs]
)
class StartPoint
{}

void main() {
  ng_bootstrap.bootstrap(StartPoint);
}