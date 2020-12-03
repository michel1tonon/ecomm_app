import 'components/category_list.dart';
import 'components/home_item.dart';
import 'components/show_case.dart';
import 'models/component.dart';
import '../../shared/components/carousel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {

  @override
  void initState() {
    super.initState();
    controller.getHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.5,
      ),
      body: Observer(
        builder: (_) => ListView(
          children: buildComponents(),
        )
      ),
    );
  }

  /// ///////////////////////////////////////////
  /// COMPONENTS ////////////////////////////////
  /// ///////////////////////////////////////////
  List<Widget> buildComponents() {
    return controller.homeStore.components.map((e) {
      switch (e.type) {
        case ComponentModel.carouselType:
          return buildCarousel(e);

        case ComponentModel.categoryListType:
          return buildCategoryList(e);

        case ComponentModel.showCaseType:
          return buildShowCase(e);

        default:
          return SizedBox.shrink(key: Key(e.id.toString()),);
      }
    }).toList();
  }

  /// ///////////////////////////////////////////
  /// CAROUSEL //////////////////////////////////
  /// ///////////////////////////////////////////
  Widget buildCarousel(ComponentModel component) {
    return HomeItem(
      key: Key(component.id.toString()),
      bottom: 0,
      child: Carousel(
        height: MediaQuery.of(context).size.width * 0.5,
        children: component.children.map((image) => Image.network(
          image,
          key: Key(image),
          fit: BoxFit.cover,
        )).toList(),
      ),
    );
  }

  /// ///////////////////////////////////////////
  /// CATEGORY LIST /////////////////////////////
  /// ///////////////////////////////////////////
  Widget buildCategoryList(ComponentModel component) {
    return HomeItem(
      key: Key(component.id.toString()),
      child: CategoryList(component),
    );
  }

  /// ///////////////////////////////////////////
  /// CATEGORY LIST /////////////////////////////
  /// ///////////////////////////////////////////
  Widget buildShowCase(ComponentModel component) {
    return HomeItem(
      key: Key(component.id.toString()),
      child: ShowCase(component),
    );
  }
}