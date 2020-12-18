import 'package:example_home/app/shared/models/api_response.dart';

abstract class IProductRepository {
  Future<ApiResponse> getProduct(int id);
}