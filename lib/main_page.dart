import 'dart:ffi';

import 'package:boletos_cine/data/datos_ficticios.dart';
import 'package:boletos_cine/models/asiento.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var isSelected = false;
  int spaceIndex = 4;

  // Dividir la lista en dos partes
  //Utilizando ~/ para obtener la mitad de la longitud
  List<Asiento> primeraMitad = listaAsientos.sublist(
      0, listaAsientos.length ~/ 2); //(startIndex, endIndex)
  List<Asiento> segundaMitad =
      listaAsientos.sublist(listaAsientos.length ~/ 2); //(endIndex)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("PELICULA")),
    );
  }
}
