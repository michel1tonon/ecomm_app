import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {

  AppWidget() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example Home',
      debugShowCheckedModeBanner: false,
      // set your initial route
      initialRoute: "/",
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white
      ),
      // add Modular to manage the routing system
      onGenerateRoute: Modular.generateRoute,
      navigatorKey: Modular.navigatorKey,
    );
  }
}
