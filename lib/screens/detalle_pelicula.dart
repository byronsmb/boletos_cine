import 'package:boletos_cine/models/pelicula.dart';
import 'package:flutter/material.dart';

class DetallePelicula extends StatelessWidget {
  const DetallePelicula({super.key, required this.peliculaActual});
  final Pelicula peliculaActual;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(peliculaActual.urlPortada),
            Positioned(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(255, 23, 27, 48).withOpacity(0.3),
                      Color.fromARGB(255, 23, 27, 48).withOpacity(0.3),
                      Color.fromARGB(255, 23, 27, 48),
                      Color.fromARGB(255, 23, 27, 48),
                      Color.fromARGB(255, 23, 27, 48)
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.45,
                //color: Colors.pink,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        peliculaActual.titulo,
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        peliculaActual.genero,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 235, 93, 12),
                        ),
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 20,
                            color: Color.fromARGB(255, 235, 93, 12),
                          ),
                          Icon(
                            Icons.star,
                            size: 20,
                            color: Color.fromARGB(255, 235, 93, 12),
                          ),
                          Icon(
                            Icons.star,
                            size: 20,
                            color: Color.fromARGB(255, 235, 93, 12),
                          ),
                          Icon(
                            Icons.star,
                            size: 20,
                            color: Color.fromARGB(255, 235, 93, 12),
                          ),
                          Icon(
                            Icons.star_half,
                            size: 20,
                            color: Color.fromARGB(255, 235, 93, 12),
                          ),
                        ],
                      ),
                      Text(
                        peliculaActual.descripcion,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 235, 93, 12),
                            ),
                            shadowColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 230, 164, 127),
                            ),
                            elevation: MaterialStatePropertyAll(5),
                          ),
                          child: const Text(
                            'Comprar tickets',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 20,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 23, 27, 48),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 35,
                      width: 35,
                      child: Center(child: Icon(Icons.arrow_back_ios_new)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 23, 27, 48),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 35,
                      width: 35,
                      child: Center(child: Icon(Icons.play_circle)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
