// extends from MainModule
import 'package:example_home/app/modules/home/home_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'app_widget.dart';

/// It's a global module. Accessed in the project.
class AppModule extends MainModule {

  List<Bind> get binds => [

  ];

  // here will be the routes of your module
  @override
  List<ModularRouter> get routers => [
    ModularRouter("/",  module: HomeModule()),
  ];

  // add your main widget here
  @override
  Widget get bootstrap => AppWidget();
}