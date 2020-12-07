import 'product_controller.dart';
import '../../shared/components/styles.dart';
import '../../shared/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProductPage extends StatefulWidget {

  final ModularArguments args;

  const ProductPage(this.args, {Key key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState(
    int.tryParse(args.params["id"]),
    args.data
  );
}

class _ProductPageState extends ModularState<ProductPage, ProductController> {

  final id;
  final ProductModel product;

  _ProductPageState(this.id, this.product);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          image(),
          description(),
        ],
      ),
    );
  }

  /// ///////////////////////////////////////////
  /// MAIN IMAGE ////////////////////////////////
  /// ///////////////////////////////////////////
  Widget image() {
    return Padding(
      padding: EdgeInsets.only(top: 32),
      child: Hero(
        tag: "${product.id}",
        child: Image.network(
          product.thumbnail,
          fit: BoxFit.cover,
        ),
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
        product.description,
        style: OpenSansBoldFont(fontSize: 18),
      ),
    );
  }
}
