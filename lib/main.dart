import 'dart:convert';

import 'package:flutter/material.dart';

main() => runApp(CambioTema());

class CambioTema extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return Tema();
  }
}

class Tema extends State<CambioTema>{
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: tema(i),
      home: Scaffold(
        appBar: encabezado,
        floatingActionButton: FloatingActionButton(
            child: Text(texto(i)),
            onPressed: (){
              i++;
              setState(() {
              });
            }
        ),
      ),
    );
  }
}

var encabezado = AppBar(
  title: Text('TEMAS'),
  centerTitle: true,
);

var texto = (int valor){
  String texto = '';
  if((valor%2)==0){
    return texto = 'Light';
  }
  else {
    return texto = 'Black';
  }
};

var tema = (int valor){
  if((valor%2)==0){
    return ThemeData.dark();
  }
  else {
    return ThemeData.light();
  }
};
