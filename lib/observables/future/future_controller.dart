import 'package:mobx/mobx.dart';

part 'future_controller.g.dart';

class FutureController = _FutureController with _$FutureController;

abstract class _FutureController with Store {
  @observable
  // ObservableFuture<String> nomeFuture = Future.value('').asObservable();
  var nomeFuture = ObservableFuture.value('');

  // Future<void> buscarNome() async {
  //   nomeFuture =
  //       Future.delayed(const Duration(seconds: 2), () => 'Leonardo Gonzalez')
  //           .asObservable();
  // }

  Future<void> buscarNome() async {
    final buscaNomeFuture =
        Future.delayed(const Duration(seconds: 2), () => 'Leonardo Gonzalez');
    nomeFuture = ObservableFuture(buscaNomeFuture);
  }
}
