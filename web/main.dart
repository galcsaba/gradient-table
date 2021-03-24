import 'package:angular/angular.dart';
import 'package:gradient/app_component.template.dart' as ng;
import 'package:http/http.dart';
import 'package:http/browser_client.dart';

@GenerateInjector([
  ClassProvider(
    Client,
    useClass: BrowserClient,
  )
])
void main() {
  runApp(ng.AppComponentNgFactory);
}
