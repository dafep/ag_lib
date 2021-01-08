import 'package:flutter/material.dart';

class NavBar extends StatefulWidget implements PreferredSizeWidget {
  NavBar({
    @required this.height,
    this.background = Colors.white,
    this.blur = 10,
    this.shadowColor,
    @required this.children,
    this.padding = 20,
    this.mainAxisAlignment = MainAxisAlignment.spaceBetween,
    this.crossAxisAlignment = CrossAxisAlignment.center,
  });

  final double height;
  final Color background;
  final double blur;
  final Color shadowColor;
  final List<Widget> children;
  final double padding;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  double width;
  double height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: widget.height,
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top, left: widget.padding, right: widget.padding),
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
        mainAxisAlignment: widget.mainAxisAlignment,
        crossAxisAlignment: widget.crossAxisAlignment,
        children: widget.children,
      )
    );
  }
}