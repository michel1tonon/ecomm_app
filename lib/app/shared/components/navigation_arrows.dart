import 'package:example_home/app/shared/components/styles.dart';
import 'package:flutter/material.dart';

class NavigationArrows extends StatelessWidget {
  final int totalChildren;
  final Function (int change) onPageChange;

  const NavigationArrows({
    Key key,
    this.totalChildren = 0,
    this.onPageChange,
  }) :
        assert(onPageChange != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: totalChildren > 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RotatedBox(child: arrowButton(-1), quarterTurns: 2,),
          arrowButton( 1),
        ],
      ),
    );
  }

  Widget arrowButton(int value) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: CircleAvatar(
        backgroundColor: Colors.white.withOpacity(0.5),
        child: InkWell(
          enableFeedback: false,
          onTap: () => onPageChange(value),
          child: Center(
            child: Icon(
              Icons.navigate_next,
              color: FONT_COLOR,
            ),
          ),
        ),
      ),
    );
  }
}
