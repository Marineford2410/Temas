import 'package:flutter/material.dart';

main() => runApp(Layout());

class Layout extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.green
      ),
      home: Scaffold(
        appBar: encabezado,
        body: cuerpo,
        floatingActionButton: botonFlotante,
      ),
    );
  }
}

var encabezado = AppBar(
    title: Text("Layout")
);
var cuerpo = Text("Cuerpo de la App en variable",
    style: TextStyle(
      backgroundColor: Color.fromARGB(127, 255, 0, 0),
      color: Colors.white,
      fontSize: 50.0,
      fontFamily: 'Arial',
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
      letterSpacing: 20.0,
    )
);
var botonFlotante = FloatingActionButton(child: Icon(Icons.access_alarm));