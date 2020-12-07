import 'package:example_home/app/modules/product/product_controller.dart';
import 'package:example_home/app/modules/product/product_page.dart';

import 'package:flutter_modular/flutter_modular.dart';

class ProductModule extends ChildModule {

  @override
  List<Bind> get binds => [
    Bind((i) => ProductController()),
  ];

  @override
  List<ModularRouter> get routers => [
    ModularRouter("/:id", child: (_, args) => ProductPage(args)),
  ];

}