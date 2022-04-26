import 'package:mobx/mobx.dart';
import 'package:mobx_imc/model/product_model.dart';

part 'observable_list_controller.g.dart';

class ObservableListController = _ObservableListController
    with _$ObservableListController;

abstract class _ObservableListController with Store {
  @observable
  var products = <ProductModel>[].asObservable();

  @action
  void loadProducts() {
    var productsData = [
      ProductModel(name: 'computador'),
      ProductModel(name: 'celular'),
      ProductModel(name: 'teclado'),
      ProductModel(name: 'mouse'),
    ];
    products.addAll(productsData);
  }

  @action
  void addProduct() {
    products.add(ProductModel(name: 'computador'));
  }

  @action
  void removeProduct() {
    products.removeAt(0);
  }
}
