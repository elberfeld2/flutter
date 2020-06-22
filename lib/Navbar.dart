import 'package:flutter/material.dart';

import 'Acerca_de_mi.dart';
import 'main.dart';

class Navbar extends StatelessWidget {
  String nombre;
  Navbar(this.nombre);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavbar(nombre);
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopNavbar(nombre);
        } else {
          return MobileNavbar(nombre);
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  String nombre;
  DesktopNavbar(this.nombre);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Portafolio ",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30),
            ),
            Row(
              children: <Widget>[
                MaterialButton(
                  color: Color.fromRGBO(233,30,99, "Quien soy" == nombre ? 0.9 : 0.0 ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyHomePage())
                      );
                  },
                  child: Text(
                    "Quien soy",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                
                SizedBox(
                  width: 30,
                ),
                
                MaterialButton(
                  color: Color.fromRGBO(233,30,99,"Experiencia" == nombre ? 0.9 : 0.0 ) ,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Acerca())
                    );
                  },
                  child: Text(
                    "Experiencia",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  String nombre;
  MobileNavbar(this.nombre);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Column(
          children: <Widget>[
          Text(
            "Portafolio ",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  color: Color.fromRGBO(233,30,99, "Quien soy" == nombre ? 0.1 : 0.0 ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0))),
                  onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyHomePage())
                      );
                  },
                  child: Text(
                    "Quien soy",
                    style: TextStyle(color: Colors.white),
                  ),
                ), 
                SizedBox(
                  width: 10,
                ),
                FlatButton(
                  color: Color.fromRGBO(233,30,99,"Experiencia" == nombre ? 0.1 : 0.0 ) ,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Acerca())
                    );
                  },
                  child: Text(
                    "Experiencia",
                    style: TextStyle(color: Colors.white),
                  ),
                  
                ),
              ],
            
            ),
          )
        ]),
      
      ),
    );
  }
}