import 'package:mobx/mobx.dart';

class ContadorController {
  final _counter = Observable<int>(0);

  int get counter => _counter.value;


  late Action increment;

  ContadorController() {
    increment = Action(_incrementCounter);
  }

  void _incrementCounter() {
    _counter.value++;
  }
}
