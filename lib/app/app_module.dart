import 'package:example_home/app/shared/stores/cart_store.dart';

import 'modules/home/home_module.dart';
import 'modules/product/product_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'app_widget.dart';

/// It's a global module.
class AppModule extends MainModule {

  // global resources
  List<Bind> get binds => [
    Bind((_) => CartStore())
  ];

  // here will be the routes of your module
  @override
  List<ModularRouter> get routers => [
    ModularRouter("/",  module: HomeModule()),
    ModularRouter("/product",  module: ProductModule()),
  ];

  // add your main widget here
  @override
  Widget get bootstrap => AppWidget();
}