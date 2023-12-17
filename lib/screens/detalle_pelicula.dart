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
                color: Colors.pink,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                        peliculaActual.descripcion,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 235, 93, 12),
                            ),
                          ),
                          child: Text('Comprar tickets'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
