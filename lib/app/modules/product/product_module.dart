import 'package:example_home/app/modules/product/product_controller.dart';
import 'package:example_home/app/modules/product/product_page.dart';
import 'package:example_home/app/modules/product/product_store.dart';
import 'package:example_home/app/modules/product/repository/product_repository_interface.dart';
import 'package:example_home/app/modules/product/repository/product_repository_mock.dart';

import 'package:flutter_modular/flutter_modular.dart';

class ProductModule extends ChildModule {

  @override
  List<Bind> get binds => [
    Bind<IProductRepository>((_) => ProductRepositoryMock()),
    Bind((i) => ProductStore(i.get<IProductRepository>())),
    Bind((i) => ProductController(i.get<ProductStore>())),
  ];

  @override
  List<ModularRouter> get routers => [
    ModularRouter("/:id", child: (_, args) => ProductPage(args)),
  ];

}