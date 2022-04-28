import 'package:mobx/mobx.dart';
import 'package:mobx_imc/model/product_model.dart';
import 'package:mobx_imc/modelo_observado/model/product_store.dart';

part 'modelo_observado_controller.g.dart';

class ModeloObservadoController = _ModeloObservadoController
    with _$ModeloObservadoController;

abstract class _ModeloObservadoController with Store {
  @observable
  var products = <ProductStore>[].asObservable();

  @action
  void loadProducts() {
    var productsData = [
      ProductStore(product: ProductModel(name: 'computador'), selected: false),
      ProductStore(product: ProductModel(name: 'celular'), selected: false),
      ProductStore(product: ProductModel(name: 'teclado'), selected: false),
      ProductStore(product: ProductModel(name: 'mouse'), selected: false),
    ];
    products.addAll(productsData);
  }

  @action
  void addProduct() {
    products.add(ProductStore(
        product: ProductModel(name: 'computador'), selected: false));
  }

  @action
  void removeProduct() {
    products.removeAt(0);
  }

  @action
  void selectedProduct(int index) {
    var productSelected = products[index].selected;
    products[index].selected = !productSelected;
  }
}
