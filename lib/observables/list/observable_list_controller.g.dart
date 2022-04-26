// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'observable_list_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ObservableListController on _ObservableListController, Store {
  final _$productsAtom = Atom(name: '_ObservableListController.products');

  @override
  ObservableList<ProductModel> get products {
    _$productsAtom.reportRead();
    return super.products;
  }

  @override
  set products(ObservableList<ProductModel> value) {
    _$productsAtom.reportWrite(value, super.products, () {
      super.products = value;
    });
  }

  final _$_ObservableListControllerActionController =
      ActionController(name: '_ObservableListController');

  @override
  void loadProducts() {
    final _$actionInfo = _$_ObservableListControllerActionController
        .startAction(name: '_ObservableListController.loadProducts');
    try {
      return super.loadProducts();
    } finally {
      _$_ObservableListControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addProduct() {
    final _$actionInfo = _$_ObservableListControllerActionController
        .startAction(name: '_ObservableListController.addProduct');
    try {
      return super.addProduct();
    } finally {
      _$_ObservableListControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeProduct() {
    final _$actionInfo = _$_ObservableListControllerActionController
        .startAction(name: '_ObservableListController.removeProduct');
    try {
      return super.removeProduct();
    } finally {
      _$_ObservableListControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
products: ${products}
    ''';
  }
}
