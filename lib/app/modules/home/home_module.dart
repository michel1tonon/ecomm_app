import 'home_store.dart';
import 'home_controller.dart';
import 'home_page.dart';
import 'repository/home_repository_interface.dart';
import 'repository/home_repository_mock.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends ChildModule {

  @override
  List<Bind> get binds => [
    Bind<IHomeRepository>((_) => HomeRepositoryMock()),
    Bind((i) => HomeStore(i.get<IHomeRepository>())),
    Bind((i) => HomeController(i.get<HomeStore>())),
  ];

  @override
  List<ModularRouter> get routers => [
    ModularRouter("/", child: (_, args) => HomePage()),
  ];

}