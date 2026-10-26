import 'package:flutter/material.dart';

/// Delivery address card, with a button to change it.
class TarjetaDireccion extends StatelessWidget {
  final String titulo;
  final String direccion;

  const TarjetaDireccion({
    super.key,
    required this.titulo,
    required this.direccion,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFA8B7C6),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          const Text('📍', style: TextStyle(fontSize: 28)),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(titulo, style: const TextStyle(color: Color(0xFF2D3A47))),
                Text(
                  direccion,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2D3A47),
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              print('Cambiar dirección');
            },
            child: const Text('Cambiar'),
          ),
        ],
      ),
    );
  }
}
