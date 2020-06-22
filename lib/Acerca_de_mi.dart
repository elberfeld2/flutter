import 'package:flutter/material.dart';

import 'Navbar.dart';
import 'Info.dart';

class Acerca extends StatelessWidget {
  List<Widget> acercaVista() {
    return  [
              Navbar("Experiencia"),
              Text(
                  "Experencia laboral",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25,
                  ),
              ),
              trabajosVista(),
            ];
  }

  List<Widget> trabajosDeskop(double width, BuildContext context) {
    List<Trabajo> trabajos = new Info().trabajos();
    List<Widget> trabajosWidget = new List<Widget>();
    for (int i = 0; i < trabajos.length; i++) {
      trabajosWidget.add(targetaTrabajoDeskop(trabajos[i], width));
    }
    return trabajosWidget;
  }

  List<Widget> trabajosMobile(double width, BuildContext context) {
    List<Trabajo> trabajos = new Info().trabajos();
    List<Widget> trabajosWidget = new List<Widget>();
    for (int i = 0; i < trabajos.length; i++) {
      trabajosWidget.add(targetaTrabajoMobile(trabajos[i]));
    }
    return trabajosWidget;
  }

  Widget trabajosVista() {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          children: constraints.maxWidth > 800
              ? trabajosDeskop(constraints.biggest.width, context)
              : trabajosMobile(constraints.biggest.width, context),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromRGBO(195, 20, 50, 1.0),
                Color.fromRGBO(36, 11, 54, 1.0)
              ]),
        ),
        child: SingleChildScrollView(
          child: Column(children: acercaVista()),
        ),
      ),
    );
  }

  Widget targetaTrabajoDeskop(Trabajo t, double w) {
    return Row(
      children: [
        Container(
          width: w / 4,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 40 , right: 3),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    t.tipo,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3, left: 40 , right: 3 ),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    t.fecha,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  )),
            ),
          ]),
        ),
        Container(
          width: (w / 4 )*3,
          child: Column(children: [
            Padding(
              padding:  const EdgeInsets.only(top: 50, left: 3 , right: 20),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    t.titulo,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  )),
            ),
            Padding(
              padding:  const EdgeInsets.only(top: 40, left: 3 , right: 20),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    t.descripcion,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  )),
            ),
          ]),
        )
      ],
    );
  }

  Widget targetaTrabajoMobile(Trabajo t) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
        child: Column(
          children: [
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  t.titulo,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    t.tipo + "   " + t.fecha,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    t.descripcion,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  )),
            ),
          ],
        ));
  }
}
