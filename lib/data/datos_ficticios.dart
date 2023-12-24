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

var peliculasDisponibles = [
  Pelicula(
    titulo: 'Oppenheimer',
    descripcion:
        'Impactado por su poder destructivo, Oppenheimer se cuestiona las consecuencias morales de su creación. Desde entonces y durante el resto de su vida, se opondría firmemente a la guerra nuclear y a la todavía más destructiva bomba de hidrógeno.',
    genero: 'Biopic, Histórico, Suspense',
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
    asientos: listaAsientos,
  ),
  Pelicula(
    titulo: 'Fast X',
    descripcion:
        'Siempre Dom Toretto y su familia han sido capaces de sobrellevarlas. En esta ocasión se enfrentarán al rival más duro hasta la fecha, dispuesto a destrozar todo lo que a Dom le importa.',
    genero: 'Acción',
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
    asientos: listaAsientos,
  ),
  Pelicula(
    titulo: 'Creed III',
    descripcion:
        'Adonis Creed está prosperando en su carrera y en su vida familiar. Cuando un amigo de la infancia y antiguo prodigio del boxeo reaparece tras cumplir condena en la cárcel, está ansioso por demostrar que merece su oportunidad en el ring.',
    genero: 'Drama',
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
    asientos: listaAsientos,
  ),
  Pelicula(
    titulo: 'John Wick: Chapter 4',
    descripcion:
        'El marqués Vincent de Gramont pretende matar a John Wick para afianzar su poder en la Orden Suprema. Sin embargo, John tratará de adelantarse a cada uno de sus movimientos hasta lograr enfrentarse cara a cara con su peor enemigo.',
    genero: 'Acción',
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
    asientos: listaAsientos,
  ),
  Pelicula(
    titulo: 'The Batman',
    descripcion:
        'En su segundo año luchando contra el crimen, Batman explora la corrupción existente en la ciudad de Gotham y el vínculo de esta con su propia familia. Además, entrará en conflicto con un asesino en serie conocido como "el Acertijo".',
    genero: 'Acción, Crimen, Suspense',
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
    urlPortada: 'assets/images/batmanCover.png',
    asientos: listaAsientos,
  ),
];

var peliculasFuturas = [
  Pelicula(
    titulo: 'Planeta de los Simios: Nuevo reino',
    descripcion: 'PROXIMAMENTE !!',
    genero: '',
    fechas: [
      Fechas(
        dia: '',
        fecha: 0,
        horarios: [],
      ),
    ],
    urlPortada: 'assets/images/simiosCover.png',
    asientos: [],
  ),
  Pelicula(
    titulo: 'Dune 2',
    descripcion: 'PROXIMAMENTE !!',
    genero: '',
    fechas: [
      Fechas(
        dia: '',
        fecha: 0,
        horarios: [],
      ),
    ],
    urlPortada: 'assets/images/dune2Cover.png',
    asientos: [],
  ),
  Pelicula(
    titulo: 'Furiosa',
    descripcion: 'PROXIMAMENTE !!',
    genero: 'genero',
    fechas: [
      Fechas(
        dia: 'Jueves',
        fecha: 13,
        horarios: ['10:00', '12:00'],
      ),
    ],
    urlPortada: 'assets/images/furiosaCover.jpg',
    asientos: [],
  ),
  Pelicula(
    titulo: 'King Arthur',
    descripcion: 'PROXIMAMENTE !!',
    genero: 'genero',
    fechas: [
      Fechas(
        dia: '',
        fecha: 0,
        horarios: [],
      ),
    ],
    urlPortada: 'assets/images/arthurCover.png',
    asientos: [],
  ),
];
