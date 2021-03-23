import 'package:angular/angular.dart';
import 'package:gradient/src/gradient_component/table.class.dart';

@Component(
  selector: 'gradient-table',
  directives: [coreDirectives],
  templateUrl: 'gradient_component.html',
  styleUrls: ['gradient_component.css'],
)
class GradientComponent implements OnInit {
  TableDrawer tableDrawer = TableDrawer(
    width: 2,
    height: 2,
  );

  @override
  void ngOnInit() {}
}
