import 'package:example_home/app/modules/product/repository/product_repository_interface.dart';
import 'package:example_home/app/shared/models/api_response.dart';
import 'package:example_home/app/shared/models/product.dart';
import 'package:mobx/mobx.dart';
part 'product_store.g.dart';

class ProductStore = _ProductStore with _$ProductStore;

// flutter packages pub run build_runner build
abstract class _ProductStore with Store {

  @observable
  ProductModel product;

  final IProductRepository _productRepository;

  _ProductStore(this._productRepository);

  Future<void> getProduct(int id) async {
    ApiResponse apiResponse = await _productRepository.getProduct(id);

    if(apiResponse.ok) {
      setProduct(
          ProductModel.fromJson(apiResponse.result));
    }
  }

  @action
  void setProduct(value) {
    this.product = value;
  }

}