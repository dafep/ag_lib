import 'package:flutter/material.dart';
import 'package:flutter_restart/flutter_restart.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UnexpectedError extends StatefulWidget {
  final String codeMessage;
  final String title;
  final String subtitle;
  final String image;

  UnexpectedError({
    this.codeMessage,
    this.title = "Ouhh... une erreur inattendue s'est produite.",
    this.subtitle = "Essayez de rafraîchir cette page ou n'hésitez pas à nous contacter si le problème persiste.",
    this.image = "assets/images/unexpected.svg",
  });

  @override
  _UnexpectedErrorState createState() => _UnexpectedErrorState();
}

class _UnexpectedErrorState extends State<UnexpectedError> {
  double width;
  double height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: new Container(
        width: width,
        height: height,
        padding: EdgeInsets.only(left: 40, right: 40),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            error500Image(),
            new SizedBox(height: 50),
            new Text(widget.title, style: TextStyle(color: Colors.black54, fontSize: 27), textAlign: TextAlign.center),
            new SizedBox(height: 30),
            new Text(widget.subtitle, style: TextStyle(color: Colors.black45, fontSize: 16), textAlign: TextAlign.center),
            new SizedBox(height: 100),
            restartAppButton(),
          ],
        ),
      ),
    );
  }

  Widget error500Image() {
    return new Container(
      padding: EdgeInsets.all(0),
      width: width / 2,
      child: new SvgPicture.asset(widget.image),
    );
  }

  Widget restartAppButton() {
    return new Container(
      width: width / 2,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.blue[400],
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: new MaterialButton(
        shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(15)),
        child: new Text("Rafraîchir", style: TextStyle(color: Colors.white, fontSize: 15)),
        onPressed: () async {
          await FlutterRestart.restartApp();
        },
      ),
    );
  }
}