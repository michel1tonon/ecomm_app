import 'package:example_home/app/modules/product/product_store.dart';
import 'package:mobx/mobx.dart';
part 'product_controller.g.dart';

class ProductController = _ProductController
    with _$ProductController;

// flutter packages pub run build_runner build
abstract class _ProductController with Store {

  final ProductStore productStore;

  @observable
  bool loading = false;

  _ProductController(this.productStore);

  Future<void> getProduct(int id) async {
    setLoading(true);
    await productStore.getProduct(id);
    setLoading(false);
  }

  @action
  void setLoading(value) {
    this.loading = value;
  }
}