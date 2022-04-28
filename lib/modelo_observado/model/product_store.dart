import 'package:mobx/mobx.dart';
import 'package:mobx_imc/model/product_model.dart';

part 'product_store.g.dart';

class ProductStore = _ProductStore with _$ProductStore;

abstract class _ProductStore with Store {
  @observable
  ProductModel product;
  @observable
  bool selected;

  _ProductStore({required this.product, required this.selected});
}
