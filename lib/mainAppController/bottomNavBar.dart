import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  final double width;
  final double height;
  final double padding;
  final Color background;
  final double blur;
  final Color shadowColor;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final double margin;
  final List<Widget> children;

  BottomNavBar({
    this.width,
    @required this.height,
    this.padding,
    this.background = Colors.white,
    this.blur = 10,
    this.shadowColor,
    this.mainAxisAlignment = MainAxisAlignment.spaceBetween,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.margin = 0,
    @required this.children,
  });

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  double width;
  double height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Container(
      width: widget.width ?? width,
      height: widget.height,
      margin: EdgeInsets.all(widget.margin),
      padding: EdgeInsets.only(left: widget.padding ?? 20, right: widget.padding ?? 20),
      decoration: BoxDecoration(
        color: widget.background,
        boxShadow: [
          BoxShadow(
            blurRadius: widget.blur,
            color: widget.shadowColor ?? Colors.black.withOpacity(0.1),
          ),
        ],
      ),
      child: new Row(
        crossAxisAlignment: widget.crossAxisAlignment,
        mainAxisAlignment: widget.mainAxisAlignment,
        children: widget.children,
      ),
    );
  }
}