import 'package:angular/angular.dart';
// import 'package:hello_again/src/more_directives/learn_direct_component.dart';
import 'package:gradient/src/gradient_component/gradient_component.dart';
// import 'package:hello_again/src/todo_list/todo_list_component.dart';

// AngularDart info: https://angulardart.dev
// Components info: https://angulardart.dev/components

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  directives: [coreDirectives, GradientComponent],
  templateUrl: 'app_component.html',
)
class AppComponent {}
