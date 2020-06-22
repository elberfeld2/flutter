import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Acerca_de_mi.dart';

class LandingPage extends StatelessWidget {
  String correo = "enrique5001@hotmail.com";
  String telefono = "2431135566";
  List<Widget> pageChildren(double width, BuildContext context) {
    return <Widget>[
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Elberfeld Enrique Perez Geronimo.",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                "Me gusta programar y aprender cómo lograr que mis ideas se vuelvan realidad.",
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
            ),
            Text(
              "Contáctame.",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.white),
            ),
            FlatButton(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                padding: EdgeInsets.all(0),
                child: Text(
                  "Correo :" + correo,
                  style: TextStyle(fontSize: 12.0, color: Colors.white),
                ),
                onPressed: () {
                  Clipboard.setData(ClipboardData(text: correo));
                }),
            RawMaterialButton(
                constraints: BoxConstraints(),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                padding: EdgeInsets.all(0),
                child: Text(
                  "Telefono :" + telefono,
                  style: TextStyle(fontSize: 12.0, color: Colors.white),
                ),
                onPressed: () {
                  Clipboard.setData(ClipboardData(text: telefono));
                }),
            /*
            MaterialButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Acerca()));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 40.0),
                child: Text(
                  "Mas de mi  ",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            )*/
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Image.asset(
          "images/lp_image.png",
          width: width,
        ),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width / 2, context),
          );
        } else {
          return Column(
            children: pageChildren(constraints.biggest.width, context),
          );
        }
      },
    );
  }
}
