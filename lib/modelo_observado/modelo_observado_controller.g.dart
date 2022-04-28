// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modelo_observado_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ModeloObservadoController on _ModeloObservadoController, Store {
  final _$productsAtom = Atom(name: '_ModeloObservadoController.products');

  @override
  ObservableList<ProductStore> get products {
    _$productsAtom.reportRead();
    return super.products;
  }

  @override
  set products(ObservableList<ProductStore> value) {
    _$productsAtom.reportWrite(value, super.products, () {
      super.products = value;
    });
  }

  final _$_ModeloObservadoControllerActionController =
      ActionController(name: '_ModeloObservadoController');

  @override
  void loadProducts() {
    final _$actionInfo = _$_ModeloObservadoControllerActionController
        .startAction(name: '_ModeloObservadoController.loadProducts');
    try {
      return super.loadProducts();
    } finally {
      _$_ModeloObservadoControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addProduct() {
    final _$actionInfo = _$_ModeloObservadoControllerActionController
        .startAction(name: '_ModeloObservadoController.addProduct');
    try {
      return super.addProduct();
    } finally {
      _$_ModeloObservadoControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeProduct() {
    final _$actionInfo = _$_ModeloObservadoControllerActionController
        .startAction(name: '_ModeloObservadoController.removeProduct');
    try {
      return super.removeProduct();
    } finally {
      _$_ModeloObservadoControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void selectedProduct(int index) {
    final _$actionInfo = _$_ModeloObservadoControllerActionController
        .startAction(name: '_ModeloObservadoController.selectedProduct');
    try {
      return super.selectedProduct(index);
    } finally {
      _$_ModeloObservadoControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
products: ${products}
    ''';
  }
}
