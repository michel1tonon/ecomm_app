import 'package:example_home/app/shared/components/carousel.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'product_controller.dart';
import '../../shared/components/styles.dart';
import '../../shared/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProductPage extends StatefulWidget {
  final ModularArguments args;

  const ProductPage(this.args, {Key key}) : super(key: key);

  @override
  _ProductPageState createState() =>
      _ProductPageState(int.tryParse(args.params["id"]), args.data);
}

class _ProductPageState extends ModularState<ProductPage, ProductController> {
  final id;
  final ProductModel product;

  _ProductPageState(this.id, this.product);

  @override
  void initState() {
    // temporary product
    controller.productStore.setProduct(product);
    // complete product
    controller.getProduct(id);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Observer(builder: (_) {
          return Column(
            children: [
              Stack(
                children: [
                  image(),

                  //back button
                  Positioned(
                      left: 0,
                      child: BackButton(
                        color: FONT_COLOR,
                      )),
                ],
              ),
              description(),
              completeDetails(),
            ],
          );
        }),
      ),
    );
  }

  /// ///////////////////////////////////////////
  /// MAIN IMAGE ////////////////////////////////
  /// ///////////////////////////////////////////
  Widget image() {
    return Hero(
      tag: "${controller.productStore.product.id}",
      child: Carousel(
        height: MediaQuery.of(context).size.width * 0.5,
        children: controller.productStore.product.images
            .map((image) => Padding(
          padding: EdgeInsets.only(bottom: 12.0, top: 12.0),
          child: Image.network(
            image,
            key: Key(image),
            fit: BoxFit.cover,
          ),
        )).toList(),
      ),
    );
  }

  /// ///////////////////////////////////////////
  /// PRODUCT DESCRIPTION ///////////////////////
  /// ///////////////////////////////////////////
  Widget description() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        controller.productStore.product.description,
        style: OpenSansBoldFont(fontSize: 18),
      ),
    );
  }

  Widget completeDetails() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        controller.productStore.product.completeDetails ?? "",
        style: OpensSansRegularFont(),
      ),
    );
  }
}
