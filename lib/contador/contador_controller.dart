import 'package:mobx/mobx.dart';

class ContadorController {
  var _counter = Observable<int>(0);

  int get counter => _counter.value;
}
