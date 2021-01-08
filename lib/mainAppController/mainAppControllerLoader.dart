import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class MainAppControllerLoader extends StatefulWidget {
  final Color background;
  final Color color;
  final double size;

  MainAppControllerLoader({
    @required this.background,
    @required this.color,
    @required this.size,
  });

  @override
  _MainAppControllerLoaderState createState() => _MainAppControllerLoaderState();
}

class _MainAppControllerLoaderState extends State<MainAppControllerLoader> {
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
      child: new Center(
        child: new SpinKitThreeBounce(
          color: widget.color,
          size: widget.size,
        ),
      ),
    );
  }
}