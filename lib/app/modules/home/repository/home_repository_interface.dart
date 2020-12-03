
import 'package:example_home/app/shared/models/api_response.dart';

abstract class IHomeRepository {
  Future<ApiResponse> getHome();
}