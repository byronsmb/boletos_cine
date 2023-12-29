import 'dart:ffi';

import 'package:boletos_cine/data/datos_ficticios.dart';

import 'package:boletos_cine/screens/detalle_pelicula.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Icon(Icons.vertical_distribute_sharp),
          actions: const [
            Icon(Icons.abc),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Cartelera",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              //color: Colors.pink,
              height: screenHeight * 0.48,
              //width: MediaQuery.of(context).size.width,
              child: CarouselSlider.builder(
                options: CarouselOptions(
                  height: screenHeight * 0.45,
                  autoPlay: false,
                  enlargeCenterPage: true,
                  viewportFraction: 0.55,
                  aspectRatio: 2.0,
                  initialPage: 2,
                ),
                itemCount: peliculasDisponibles.length,
                itemBuilder: (context, index, realIndex) {
                  return Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => DetallePelicula(
                                peliculaActual: peliculasDisponibles[index],
                              ),
                            ));
                          },
                          child: Container(
                            height: screenHeight * 0.40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage(
                                    peliculasDisponibles[index].urlPortada),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        child: Text(
                          peliculasDisponibles[index].titulo,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 23,
                            overflow: TextOverflow.ellipsis,
                          ),
                          maxLines: 1,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Próximamente",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              //color: Colors.red,
              height: screenHeight * 0.27,
              //width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: peliculasFuturas.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => DetallePelicula(
                                peliculaActual: peliculasFuturas[index],
                              ),
                            ));
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Container(
                              height: screenHeight * 0.22,
                              width: screenWidth * 0.3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Image.asset(
                                peliculasFuturas[index].urlPortada,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: screenWidth * 0.3,
                          child: Text(
                            peliculasFuturas[index].titulo,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              overflow: TextOverflow.ellipsis,
                            ),
                            textAlign: TextAlign.left,
                            maxLines: 1,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
