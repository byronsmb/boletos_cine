import 'package:boletos_cine/models/asiento.dart';
import 'package:boletos_cine/models/fechas.dart';
import 'package:boletos_cine/models/pelicula.dart';

var listaAsientos = [
  Asiento(
    id: 'A1',
  ),
  Asiento(
    id: 'A2',
  ),
  Asiento(
    id: 'A3',
  ),
  Asiento(
    id: 'A4',
  ),
  Asiento(
    id: 'B1',
  ),
  Asiento(
    id: 'B2',
  ),
  Asiento(
    id: 'B3',
  ),
  Asiento(
    id: 'B4',
  ),
  Asiento(
    id: 'C1',
  ),
  Asiento(
    id: 'C2',
  ),
  Asiento(
    id: 'C3',
  ),
  Asiento(
    id: 'C4',
  ),
  Asiento(
    id: 'D1',
  ),
  Asiento(
    id: 'D2',
  ),
  Asiento(
    id: 'D3',
  ),
  Asiento(
    id: 'D4',
  ),
  Asiento(
    id: 'E1',
  ),
  Asiento(
    id: 'E2',
  ),
  Asiento(
    id: 'E3',
  ),
  Asiento(
    id: 'E4',
  ),
  Asiento(
    id: 'F1',
  ),
  Asiento(
    id: 'F2',
  ),
  Asiento(
    id: 'F3',
  ),
  Asiento(
    id: 'F4',
  ),
  Asiento(
    id: 'G1',
  ),
  Asiento(
    id: 'G2',
  ),
  Asiento(
    id: 'G3',
  ),
  Asiento(
    id: 'G4',
  ),
  Asiento(
    id: 'H1',
  ),
  Asiento(
    id: 'H2',
  ),
  Asiento(
    id: 'H3',
  ),
  Asiento(
    id: 'H4',
  ),
  Asiento(
    id: 'I1',
  ),
  Asiento(
    id: 'I2',
  ),
  Asiento(
    id: 'I3',
  ),
  Asiento(
    id: 'I4',
  ),
  Asiento(
    id: 'J1',
  ),
  Asiento(
    id: 'J2',
  ),
  Asiento(
    id: 'J3',
  ),
  Asiento(
    id: 'J4',
  ),
  Asiento(
    id: 'K1',
  ),
  Asiento(
    id: 'K2',
  ),
  Asiento(
    id: 'K3',
  ),
  Asiento(
    id: 'K4',
  ),
  Asiento(
    id: 'L1',
  ),
  Asiento(
    id: 'L2',
  ),
  Asiento(
    id: 'L3',
  ),
  Asiento(
    id: 'L4',
  ),
  Asiento(
    id: 'M1',
  ),
  Asiento(
    id: 'M2',
  ),
  Asiento(
    id: 'M3',
  ),
  Asiento(
    id: 'M4',
  ),
  Asiento(
    id: 'N1',
  ),
  Asiento(
    id: 'N2',
  ),
  Asiento(
    id: 'N3',
  ),
  Asiento(
    id: 'N4',
  ),
];

// var fechasDisponibles = [
//   const Fechas(
//     dia: 'Lunes',
//     fecha: 12,
//     horarios: [
//       '12:30',
//       '15:30',
//       '18:00',
//     ],
//   ),
// ];

const peliculasDisponibles = [
  Pelicula(
    titulo: 'Oppenheimer',
    descripcion:
        'Impactado por su poder destructivo, Oppenheimer se cuestiona las consecuencias morales de su creación. Desde entonces y durante el resto de su vida, se opondría firmemente a la guerra nuclear y a la todavía más destructiva bomba de hidrógeno.',
    genero: 'genero',
    fechas: [
      Fechas(
        dia: 'Lunes',
        fecha: 13,
        horarios: ['13:00', '15:00'],
      ),
      Fechas(
        dia: 'Martes',
        fecha: 14,
        horarios: ['10:00', '12:00'],
      )
    ],
    urlPortada: 'assets/images/oppenheimerCover.png',
  ),
  Pelicula(
    titulo: 'Fast X',
    descripcion:
        'Durante numerosas misiones más que imposibles, Dom Toretto y su familia han sido capaces de ser más listos, de tener más valor y de ir más rápido que cualquier enemigo que se cruzara con ellos. Pero ahora tendrán que enfrentarse al oponente más letal que jamás hayan conocido',
    genero: 'genero',
    fechas: [
      Fechas(
        dia: 'Jueves',
        fecha: 13,
        horarios: ['10:00', '12:00'],
      ),
      Fechas(
        dia: 'Viernes',
        fecha: 14,
        horarios: ['17:00', '22:00'],
      )
    ],
    urlPortada: 'assets/images/fastxCover.png',
  ),
  Pelicula(
    titulo: 'Creed III',
    descripcion:
        'Durante numerosas misiones más que imposibles, Dom Toretto y su familia han sido capaces de ser más listos, de tener más valor y de ir más rápido que cualquier enemigo que se cruzara con ellos. Pero ahora tendrán que enfrentarse al oponente más letal que jamás hayan conocido',
    genero: 'genero',
    fechas: [
      Fechas(
        dia: 'Jueves',
        fecha: 13,
        horarios: ['10:00', '12:00'],
      ),
      Fechas(
        dia: 'Viernes',
        fecha: 14,
        horarios: ['17:00', '22:00'],
      )
    ],
    urlPortada: 'assets/images/Creed_IIICover.jpg',
  ),
  Pelicula(
    titulo: 'Fast X',
    descripcion:
        'Durante numerosas misiones más que imposibles, Dom Toretto y su familia han sido capaces de ser más listos, de tener más valor y de ir más rápido que cualquier enemigo que se cruzara con ellos. Pero ahora tendrán que enfrentarse al oponente más letal que jamás hayan conocido',
    genero: 'genero',
    fechas: [
      Fechas(
        dia: 'Jueves',
        fecha: 13,
        horarios: ['10:00', '12:00'],
      ),
      Fechas(
        dia: 'Viernes',
        fecha: 14,
        horarios: ['17:00', '22:00'],
      )
    ],
    urlPortada: 'assets/images/jhonwickCover.png',
  ),
];

const peliculasFuturas = [
  Pelicula(
    titulo: 'Planeta de los Simios: Nuevo reino',
    descripcion:
        'Impactado por su poder destructivo, Oppenheimer se cuestiona las consecuencias morales de su creación. Desde entonces y durante el resto de su vida, se opondría firmemente a la guerra nuclear y a la todavía más destructiva bomba de hidrógeno.',
    genero: 'genero',
    fechas: [
      Fechas(
        dia: 'Lunes',
        fecha: 13,
        horarios: ['13:00', '15:00'],
      ),
      Fechas(
        dia: 'Martes',
        fecha: 14,
        horarios: ['10:00', '12:00'],
      )
    ],
    urlPortada: 'assets/images/simiosCover.png',
  ),
  Pelicula(
    titulo: 'Dune 2',
    descripcion:
        'Durante numerosas misiones más que imposibles, Dom Toretto y su familia han sido capaces de ser más listos, de tener más valor y de ir más rápido que cualquier enemigo que se cruzara con ellos. Pero ahora tendrán que enfrentarse al oponente más letal que jamás hayan conocido',
    genero: 'genero',
    fechas: [
      Fechas(
        dia: 'Jueves',
        fecha: 13,
        horarios: ['10:00', '12:00'],
      ),
      Fechas(
        dia: 'Viernes',
        fecha: 14,
        horarios: ['17:00', '22:00'],
      )
    ],
    urlPortada: 'assets/images/fastxCover.png',
  ),
  Pelicula(
    titulo: 'Furiosa',
    descripcion:
        'Durante numerosas misiones más que imposibles, Dom Toretto y su familia han sido capaces de ser más listos, de tener más valor y de ir más rápido que cualquier enemigo que se cruzara con ellos. Pero ahora tendrán que enfrentarse al oponente más letal que jamás hayan conocido',
    genero: 'genero',
    fechas: [
      Fechas(
        dia: 'Jueves',
        fecha: 13,
        horarios: ['10:00', '12:00'],
      ),
      Fechas(
        dia: 'Viernes',
        fecha: 14,
        horarios: ['17:00', '22:00'],
      )
    ],
    urlPortada: 'assets/images/Creed_IIICover.jpg',
  ),
  Pelicula(
    titulo: 'King Arthur',
    descripcion:
        'Durante numerosas misiones más que imposibles, Dom Toretto y su familia han sido capaces de ser más listos, de tener más valor y de ir más rápido que cualquier enemigo que se cruzara con ellos. Pero ahora tendrán que enfrentarse al oponente más letal que jamás hayan conocido',
    genero: 'genero',
    fechas: [
      Fechas(
        dia: 'Jueves',
        fecha: 13,
        horarios: ['10:00', '12:00'],
      ),
      Fechas(
        dia: 'Viernes',
        fecha: 14,
        horarios: ['17:00', '22:00'],
      )
    ],
    urlPortada: 'assets/images/jhonwickCover.png',
  ),
];
