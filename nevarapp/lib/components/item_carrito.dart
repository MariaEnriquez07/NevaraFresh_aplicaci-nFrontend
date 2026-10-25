import 'package:flutter/material.dart';
import 'package:nevarapp/colores.dart';

/// One product inside the cart, with its quantity and price.
class ItemCarrito extends StatelessWidget {
  final String emoji;
  final String nombre;
  final String detalle;

  const ItemCarrito({
    super.key,
    required this.emoji,
    required this.nombre,
    required this.detalle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: petalo, width: 2),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: salvia,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(emoji, style: const TextStyle(fontSize: 28)),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nombre,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: medianoche,
                  ),
                ),
                Text(detalle, style: const TextStyle(color: Colors.grey)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
