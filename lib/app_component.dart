import 'package:angular/angular.dart';
import 'package:gradient/src/gradient_component/gradient_component.dart';

// AngularDart info: https://angulardart.dev
// Components info: https://angulardart.dev/components

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  directives: [coreDirectives, GradientComponent],
  templateUrl: 'app_component.html',
)
class AppComponent {}
