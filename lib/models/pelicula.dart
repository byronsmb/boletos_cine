import 'package:boletos_cine/models/fechas.dart';

class Pelicula {
  const Pelicula({
    required this.titulo,
    required this.descripcion,
    required this.genero,
    required this.fechas,
  });

  final String titulo;
  final String descripcion;
  final String genero;
  final Fechas fechas;
}
