import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  final Widget child;
  final double paddingLeftRight;
  final double paddingTopBottom;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final Color background;

  Body({
    this.child,
    this.paddingLeftRight,
    this.paddingTopBottom,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.background = Colors.white,
  });

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  double width;
  double height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height,
      color: widget.background,
      padding: EdgeInsets.only(left: widget.paddingLeftRight ?? 20, right: widget.paddingLeftRight ?? 20),
      child: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overscroll) {
          overscroll.disallowGlow();
          return true;
        },
        child: SingleChildScrollView(
          child: new Column(
            mainAxisAlignment: widget.mainAxisAlignment,
            crossAxisAlignment: widget.crossAxisAlignment,
            children: [
              new SizedBox(height: widget.paddingTopBottom ?? 20),
              widget.child,
              new SizedBox(height: widget.paddingTopBottom ?? 20),
            ],
          ),
        ),
      ),
    );
  }
}