import 'package:boletos_cine/models/asiento.dart';
import 'package:boletos_cine/models/fechas.dart';

class Pelicula {
  const Pelicula({
    required this.titulo,
    required this.descripcion,
    required this.genero,
    required this.fechas,
    required this.urlPortada,
    required this.asientos,
  });

  final String titulo;
  final String descripcion;
  final String genero;
  final List<Fechas> fechas;
  final String urlPortada;

  final List<Asiento> asientos;
}
