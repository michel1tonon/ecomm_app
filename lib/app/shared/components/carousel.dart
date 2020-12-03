library carousel;

import 'package:example_home/app/shared/components/navigation_arrows.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Carousel extends StatefulWidget {
  final List<Widget> children;
  final double height;
  final double width;
  final double arrowNavigationWidth;
  final bool showDots;
  final double viewportFraction;

  const Carousel({
    Key key,
    this.children,
    this.height,
    this.width = double.infinity,
    this.showDots = true,
    this.arrowNavigationWidth = double.infinity,
    this.viewportFraction = 1.0,
  })  : assert(children != null),
        assert(height != null),
        assert(width != null),
        super(key: key);

  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  PageController controller;
  int currentPage = 0;

  Widget currentDot;
  Widget normalDot;

  @override
  void initState() {
    controller = PageController(
        initialPage: children.length,
        viewportFraction: widget.viewportFraction,
    );

    currentDot = dot(Colors.blueAccent );
    normalDot  = dot(Colors.black54);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: widget.height,
        width: widget.width,
        child: Stack(
          children: [
            // image
            PageView.builder(
              controller: controller,
              itemBuilder: (context, index) => children[currentIndex(index)],
              onPageChanged: onPageChanged,
            ),

            // navigation
            Center(
              child: Container (
                width: widget.arrowNavigationWidth,
                child: NavigationArrows(
                    totalChildren: children.length,
                    onPageChange: onPageChange,
                  ),
              ),
            ),

            // navigation dots
            Visibility(
              visible: children.length > 1 && widget.showDots,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Wrap(
                  children: navigationDots(),
                ),
              ),
            ),
          ],
        ));
  }

  /// /////////////////////////////////////////////////////////////////////////
  /// WIDGETS /////////////////////////////////////////////////////////////////
  /// /////////////////////////////////////////////////////////////////////////

  List<Widget> navigationDots() {
    List<Widget> p = <Widget>[];
    for (int i = 0; i < children.length; i++) {
      p.add(i == currentPage ? currentDot : normalDot);
    }
    return p;
  }

  Widget dot(Color color) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipOval(
        child: Container(
          width: 10,
          height: 10,
          color: color,
        ),
      ),
    );
  }

  /// /////////////////////////////////////////////////////////////////////////
  /// EVENTS AND VALUES ///////////////////////////////////////////////////////
  /// /////////////////////////////////////////////////////////////////////////

  void onPageChanged(int index) {
    setState(() {
      this.currentPage = currentIndex(index);
    });

    if (index == 0) {
      controller.jumpToPage(children.length);
    }
  }

  void onPageChange(int index) {
    if (index == 1)
      controller.nextPage(
        duration: Duration(milliseconds: 250),
        curve: Curves.easeOut,
      );
    if (index == -1)
      controller.previousPage(
        duration: Duration(milliseconds: 250),
        curve: Curves.easeOut,
      );
  }

  int currentIndex(int index) {
    return index % children.length;
  }

  List<Widget> get children {
    return widget.children;
  }
}
