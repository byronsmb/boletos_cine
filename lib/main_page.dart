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
      body: Container(
        color: Colors.amber,
        height: screenHeight * 0.5,
        //width: MediaQuery.of(context).size.width,
        child: CarouselSlider.builder(
          options: CarouselOptions(
            height: screenHeight * 0.42,
            autoPlay: false,
            enlargeCenterPage: true,
            viewportFraction: 0.6,
            aspectRatio: 2.0,
            initialPage: 2,
          ),
          itemCount: peliculasDisponibles.length,
          itemBuilder: (context, index, realIndex) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                  peliculasDisponibles[index].urlPortada,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
