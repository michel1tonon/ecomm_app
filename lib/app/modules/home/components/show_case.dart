import '../../../shared/models/product.dart';

import '../models/component.dart';
import '../../../shared/components/carousel.dart';
import '../../../shared/components/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ShowCase extends StatelessWidget {
  final ComponentModel component;

  final Function(ProductModel product) onTapProduct;
  final Function(ProductModel product) onTapBuy;

  const ShowCase(
    this.component, {
    Key key,
    this.onTapProduct,
    this.onTapBuy,
  }) :
        assert(component != null),
        assert(onTapProduct != null),
        assert(onTapBuy != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            component.label,
            style: OpenSansBoldFont(fontSize: 18),
          ),
        ),
        Carousel(
          height: 290,
          arrowNavigationWidth: MediaQuery.of(context).size.width * 0.7,
          showDots: false,
          children: component.children
              .map((p) => InkWell(
                    onTap: () => onTapProduct(ProductModel.fromJson(p)),
                    child: _carouselItem(p),
                  ))
              .toList()
              .cast<Widget>(),
        )
      ],
    );
  }

  Widget _carouselItem(product) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 130,
          child: Hero(
            tag: "${product["id"]}",
            child: Image.network(
              product["thumbnail"],
            ),
          ),
        ),
        SizedBox(
          width: 200,
          child: Text(
            product["description"],
            maxLines: 3,
            textAlign: TextAlign.center,
            style: OpenSansBoldFont(fontSize: 14),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Preço Unitário \n R\$ ${product["price"]}",
            style: OpensSansRegularFont(fontSize: 14),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          width: 180,
          child: FlatButton(
            color: Colors.blueAccent,
            child: Text(
              "Comprar",
              style: OpensSansRegularFont(
                color: Colors.white,
              ),
            ),
            onPressed: () => onTapBuy(ProductModel.fromJson(product)),
          ),
        ),
      ],
    );
  }
}
