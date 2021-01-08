import 'package:flutter/material.dart';

class NavBarItem extends StatefulWidget {
  final Widget child;
  final void Function() onPressed;

  NavBarItem({
    @required this.child,
    @required this.onPressed,
  });

  @override
  _NavBarItemState createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.all(0),
      highlightColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      disabledColor: Colors.transparent,
      child: widget.child,
      onPressed: widget.onPressed,
    );
  }
}