import 'package:flutter/material.dart';

/// Category tile: a big emoji on a soft square with its name below.
class FichaCategoria extends StatelessWidget {
  final String emoji;
  final String nombre;

  const FichaCategoria({super.key, required this.emoji, required this.nombre});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 84,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFFF7C8D3),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(emoji, style: const TextStyle(fontSize: 32)),
          ),
          const SizedBox(height: 8),
          Text(
            nombre,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFF2D3A47),
            ),
          ),
        ],
      ),
    );
  }
}
