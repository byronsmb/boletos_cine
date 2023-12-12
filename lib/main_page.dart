import 'dart:ffi';

import 'package:boletos_cine/data/datos_ficticios.dart';
import 'package:boletos_cine/models/asiento.dart';
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
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.pink,
            height: screenHeight * 0.55,
            //width: MediaQuery.of(context).size.width,
            child: CarouselSlider.builder(
              options: CarouselOptions(
                height: screenHeight * 0.5,
                autoPlay: false,
                enlargeCenterPage: true,
                viewportFraction: 0.6,
                aspectRatio: 2.0,
                initialPage: 2,
              ),
              itemCount: peliculasDisponibles.length,
              itemBuilder: (context, index, realIndex) {
                return Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: screenHeight * 0.45,
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
          Container(
            color: Colors.red,
            height: screenHeight * 0.3,
            //width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: peliculasFuturas.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          height: screenHeight * 0.25,
                          width: screenWidth * 0.38,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Image.asset(
                            peliculasFuturas[index].urlPortada,
                          ),
                        ),
                      ),
                      Container(
                        width: screenWidth * 0.38,
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
    );
  }
}
