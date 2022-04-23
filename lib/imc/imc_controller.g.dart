// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'imc_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ImcController on _ImcController, Store {
  final _$imcAtom = Atom(name: '_ImcController.imc');

  @override
  double get imc {
    _$imcAtom.reportRead();
    return super.imc;
  }

  @override
  set imc(double value) {
    _$imcAtom.reportWrite(value, super.imc, () {
      super.imc = value;
    });
  }

  final _$calcularImcAsyncAction = AsyncAction('_ImcController.calcularImc');

  @override
  Future<void> calcularImc({required double peso, required double altura}) {
    return _$calcularImcAsyncAction
        .run(() => super.calcularImc(peso: peso, altura: altura));
  }

  @override
  String toString() {
    return '''
imc: ${imc}
    ''';
  }
}
