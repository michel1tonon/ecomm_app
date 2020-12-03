import '../../../shared/components/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryIcon extends StatelessWidget {
  final String text;
  final String urlImage;

  const CategoryIcon({
    Key key,
    this.text,
    this.urlImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 12.0,
        horizontal: 20,
      ),
      child: Column(
        children: [
          Image.network(urlImage, width: 60, height: 60,),
          Padding(
            padding: EdgeInsets.only(top: 8),
            child: Text(
              text,
              style: OpensSansRegularFont(fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
