import 'home_store.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeController
    with _$HomeController;

// flutter packages pub run build_runner build
abstract class _HomeController with Store {

  final HomeStore homeStore;

  @observable
  bool loading = false;

  _HomeController(this.homeStore);

  Future<void> getHome() async {
    setLoading(true);

    await homeStore.getHome();

    setLoading(false);
  }

  @action
  setLoading(value){
    this.loading = value;
  }

}