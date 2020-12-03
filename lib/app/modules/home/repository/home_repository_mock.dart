import 'package:dio/dio.dart';
import 'package:example_home/app/shared/helper/utils.dart';
import 'package:example_home/app/shared/models/api_response.dart';
import 'home_repository_interface.dart';

class HomeRepositoryMock implements IHomeRepository {

  @override
  Future<ApiResponse> getHome() async {
    return ApiResponse.create(Response(
      data: await loadMockFromAssets("home"),
      statusCode: 200,
    ), "Erro ao obter arquivo.");
  }
}