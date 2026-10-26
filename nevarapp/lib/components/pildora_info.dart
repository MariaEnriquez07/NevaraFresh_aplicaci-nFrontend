import 'package:flutter/material.dart';

/// Small rounded pill with a short fact (Fresca, Domicilio...).
class PildoraInfo extends StatelessWidget {
  final String texto;

  const PildoraInfo({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: const Color(0xFFF7C8D3),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(texto, style: const TextStyle(color: Color(0xFF2D3A47))),
    );
  }
}
