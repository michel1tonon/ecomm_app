import 'category_icon.dart';
import '../models/component.dart';
import '../../../shared/components/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  final _scrollController = ScrollController();
  final ComponentModel component;

  CategoryList(
    this.component, {
    Key key,
  })  : assert(component != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Categorias",
            style: OpenSansBoldFont(fontSize: 18),
          ),
        ),
        SizedBox(
          height: 115,
          child: Scrollbar(
            controller: _scrollController,
            child: SingleChildScrollView(
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              child: Row(
                children: categoryIconsList(),
              ),
            ),
          ),
        ),
      ],
    );
  }

  List<Widget> categoryIconsList() {
    return component.children
        .map((category) => CategoryIcon(
              key: Key(category["id"].toString()),
              text: category["label"],
              urlImage: category["image"],
            ))
        .toList();
  }
}
