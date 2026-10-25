import 'package:flutter/material.dart';

/// One order of the history, with its status.
class TarjetaPedido extends StatelessWidget {
  final String numero;
  final String fecha;
  final String estado;
  final String total;

  const TarjetaPedido({
    super.key,
    required this.numero,
    required this.fecha,
    required this.estado,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xFFF7C8D3), width: 2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  numero,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2D3A47),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: BoxDecoration(
                  color: const Color(0xFFA8B7C6),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  estado,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2D3A47),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(fecha, style: const TextStyle(color: Colors.grey)),
          const SizedBox(height: 8),
          Text(
            total,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFFB46A72),
            ),
          ),
        ],
      ),
    );
  }
}
