import 'package:flutter/material.dart';
import 'package:nevarapp/colores.dart';

/// One product of the catalog list, with a button to add it.
class TarjetaProducto extends StatelessWidget {
  final String emoji;
  final String nombre;
  final String precio;

  const TarjetaProducto({
    super.key,
    required this.emoji,
    required this.nombre,
    required this.precio,
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
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: salvia,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(emoji, style: const TextStyle(fontSize: 32)),
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
                Text(precio, style: const TextStyle(color: Colors.grey)),
              ],
            ),
          ),
          IconButton(
            onPressed: () {
              print(nombre);
            },
            icon: const Icon(Icons.add),
            color: rosewood,
            iconSize: 32,
          ),
        ],
      ),
    );
  }
}
