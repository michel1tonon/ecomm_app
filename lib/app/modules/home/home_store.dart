
import 'models/component.dart';
import 'repository/home_repository_interface.dart';
import '../../shared/models/api_response.dart';
import 'package:mobx/mobx.dart';
part 'home_store.g.dart';

class HomeStore = _HomeStore with _$HomeStore;

// flutter packages pub run build_runner build
abstract class _HomeStore with Store {

  final IHomeRepository _homeRepository;

  @observable
  List<ComponentModel> components = <ComponentModel>[];

  _HomeStore(this._homeRepository);

  Future<void> getHome() async {
    ApiResponse apiResponse = await _homeRepository.getHome();

    if(apiResponse.ok) {
      List<ComponentModel> temp = <ComponentModel>[];

      apiResponse.result['components'].forEach((e) =>
          temp.add(ComponentModel.fromJson(e)));

      setComponents(temp);
    }
  }

  @action
  void setComponents(value) {
    this.components = value;
  }

}
