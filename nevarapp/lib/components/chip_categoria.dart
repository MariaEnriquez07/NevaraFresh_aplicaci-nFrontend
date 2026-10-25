import 'package:flutter/material.dart';
import 'package:nevarapp/colores.dart';

/// Small pill with a category name (Frutas, Verduras...).
class ChipCategoria extends StatelessWidget {
  final String label;
  final bool activo;

  const ChipCategoria({super.key, required this.label, required this.activo});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: activo ? rosewood : petalo,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: TextStyle(color: activo ? Colors.white : medianoche),
      ),
    );
  }
}
