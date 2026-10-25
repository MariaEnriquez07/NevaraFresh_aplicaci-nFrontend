import 'package:flutter/material.dart';

/// One product inside the cart, with its quantity and subtotal.
class ItemCarrito extends StatelessWidget {
  final String emoji;
  final String nombre;
  final String detalle;
  final String subtotal;

  const ItemCarrito({
    super.key,
    required this.emoji,
    required this.nombre,
    required this.detalle,
    required this.subtotal,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xFFF7C8D3), width: 2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: const Color(0xFFA8B58A),
              borderRadius: BorderRadius.circular(16),
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
                    color: Color(0xFF2D3A47),
                  ),
                ),
                Text(detalle, style: const TextStyle(color: Colors.grey)),
              ],
            ),
          ),
          Text(
            subtotal,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2D3A47),
            ),
          ),
        ],
      ),
    );
  }
}
