import 'dart:ffi';

import 'package:boletos_cine/data/datos_ficticios.dart';
import 'package:boletos_cine/models/asiento.dart';
import 'package:boletos_cine/models/pelicula.dart';
import 'package:flutter/material.dart';

class ComprarAsientos extends StatefulWidget {
  const ComprarAsientos({super.key, required this.peliculaActual});
  final Pelicula peliculaActual;
  @override
  State<ComprarAsientos> createState() => _ComprarAsientosState();
}

class _ComprarAsientosState extends State<ComprarAsientos> {
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
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 23, 27, 48),
      appBar: AppBar(title: Text(widget.peliculaActual.titulo)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Stack(
            children: [
              Image.asset('assets/images/luz.png'),
              Positioned(
                top: 50,
                left: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: screenHeight * 0.45,
                      width: screenWidth * 0.4,
                      //color: Colors.red,
                      child: GridView.builder(
                        itemCount: primeraMitad.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount:
                              4, // Número de columnas en la cuadrícula
                          crossAxisSpacing:
                              8, // Espaciado horizontal entre los elementos
                          mainAxisSpacing:
                              20, // Espaciado vertical entre los elementos),
                        ),
                        itemBuilder: (context, index) {
                          return itemAsiento(primeraMitad, index);
                        },
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.1),
                    Container(
                      height: screenHeight * 0.45,
                      width: screenWidth * 0.4,
                      //color: Colors.blue,
                      child: GridView.builder(
                        itemCount: segundaMitad.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount:
                              4, // Número de columnas en la cuadrícula
                          crossAxisSpacing:
                              8, // Espaciado horizontal entre los elementos
                          mainAxisSpacing:
                              20, // Espaciado vertical entre los elementos),
                        ),
                        itemBuilder: (context, index) {
                          return itemAsiento(segundaMitad, index);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.chair,
                color: Color.fromARGB(255, 235, 93, 12),
              ),
              Text('Seleccionado'),
              SizedBox(width: 20),
              Icon(
                Icons.chair,
                color: Colors.blueGrey,
              ),
              Text('Reservado'),
              SizedBox(width: 20),
              Icon(Icons.chair),
              Text('Disponible'),
            ],
          ),
          Container(
            height: 60,
            //color: Colors.amber,
            //width:
            child: ListView.builder(
              itemCount: 6,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const Card(
                  color: Color.fromARGB(255, 235, 93, 12),
                  shadowColor: Color.fromARGB(255, 235, 93, 12),
                  elevation: 5,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'MAR',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '13',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            height: 40,
            //color: Colors.amber,
            //width:
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const Card(
                  color: Color.fromARGB(255, 235, 93, 12),
                  shadowColor: Color.fromARGB(255, 235, 93, 12),
                  elevation: 5,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Center(
                      child: Text(
                        '13:00',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                Color.fromARGB(255, 235, 64, 12),
              ),
              shadowColor: MaterialStatePropertyAll(
                Color.fromARGB(255, 230, 164, 127),
              ),
              elevation: MaterialStatePropertyAll(5),
            ),
            child: const Text(
              'Confirmar',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget itemAsiento(List<Asiento> lista, int index) {
    return InkWell(
      onTap: () {
        setState(() {
          lista[index].isSelected = !lista[index].isSelected;
        });
      },
      child: Icon(
        lista[index].asientoIcon,
        color: lista[index].isSelected
            ? Color.fromARGB(
                255, 235, 93, 12) //const Color.fromARGB(255, 254, 94, 2)
            : Colors.white,
      ),
    );
  }
}
