import 'package:dio/dio.dart';
import 'package:example_home/app/modules/product/repository/product_repository_interface.dart';
import 'package:example_home/app/shared/helper/utils.dart';
import 'package:example_home/app/shared/models/api_response.dart';

class ProductRepositoryMock implements IProductRepository {

  @override
  Future<ApiResponse> getProduct(int id) async {
    print(id);
    return ApiResponse.create(Response(
      data: await loadMockFromAssets("product_$id"),
      statusCode: 200,
    ), "Erro ao obter arquivo de produto.");
  }
}