import 'package:example_home/app/shared/stores/cart_store.dart';

import 'home_store.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeController
    with _$HomeController;

// flutter packages pub run build_runner build
abstract class _HomeController with Store {

  final HomeStore homeStore;
  final CartStore cartStore;

  @observable
  bool loading = false;

  _HomeController(this.homeStore, this.cartStore);

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