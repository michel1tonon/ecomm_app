import 'package:flutter/widgets.dart';

class HomeItem extends StatelessWidget {
  final Widget child;
  final double bottom;
  final double top;
  final double left;
  final double right;

  const HomeItem({
    Key key,
    this.child,
    this.bottom = 20,
    this.top = 0,
    this.left = 0,
    this.right = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: bottom,
        top: top,
        left: left,
        right: right,
      ),
      child: child,
    );
  }
}
