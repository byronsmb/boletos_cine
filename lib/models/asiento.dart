import 'package:boletos_cine/models/fechas.dart';
import 'package:flutter/material.dart';

class Asiento {
  Asiento({
    required this.id,
    this.asientoIcon = Icons.chair,
    this.isSelected = false,
  });

  final String id;
  final IconData asientoIcon;
  bool isSelected;
}
