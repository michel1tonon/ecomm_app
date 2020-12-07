
import 'package:example_home/app/shared/models/product.dart';
import 'package:mobx/mobx.dart';
part 'cart_store.g.dart';

class CartStore = _CartStore with _$CartStore;

// flutter packages pub run build_runner build
abstract class _CartStore with Store {

  Future<void> addProduct(ProductModel product) async {
    // sync product and update cart
  }

}
