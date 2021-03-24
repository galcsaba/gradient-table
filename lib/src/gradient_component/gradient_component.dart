import 'package:angular/angular.dart';
import 'package:gradient/src/gradient_component/table.class.dart';

@Component(
  selector: 'gradient-table',
  directives: [
    coreDirectives,
    GradientComponent,
  ],
  templateUrl: 'gradient_component.html',
  styleUrls: ['gradient_component.css'],
)
class GradientComponent {
  bool isValid = true;
  int tableSize = 2;
  String errorMsg = 'A méret minimum 2 és maximum 100 lehet.';

  // iterable for table rows and cols in the gradient_component.html
  List numSequence(int i) {
    return List(i);
  }

  void submitSize(size) {
    if (int.parse(size.value) < 2) {
      errorMsg =
          'A megadott szám túl kicsi. A méret minimum 2 és maximum 100 lehet.';
      isValid = false;
    } else if (int.parse(size.value) > 100) {
      errorMsg =
          'A megadott szám túl nagy. A méret minimum 2 és maximum 100 lehet.';
      isValid = false;
    } else {
      isValid = true;
      tableDrawer.width = int.parse(size.value);
      tableDrawer.height = int.parse(size.value);
    }
  }

  TableDrawer tableDrawer = TableDrawer(
    width: 2,
    height: 2,
    startRed: 255,
    startGreen: 255,
    startBlue: 255,
    endRed: 255,
    endGreen: 0,
    endBlue: 0,
  );
}
