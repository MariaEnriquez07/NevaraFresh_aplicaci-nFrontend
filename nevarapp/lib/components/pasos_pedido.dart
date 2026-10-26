import 'package:flutter/material.dart';

/// Tracking of the order in progress: four steps with an emoji each.
class PasosPedido extends StatelessWidget {
  const PasosPedido({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xFFF7C8D3), width: 2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Pedido #1042',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2D3A47),
            ),
          ),
          Text(
            'En camino',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFFB46A72),
            ),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text('✅', style: TextStyle(fontSize: 28)),
                  SizedBox(height: 4),
                  Text('Recibido', style: TextStyle(fontSize: 12)),
                ],
              ),
              Column(
                children: [
                  Text('✅', style: TextStyle(fontSize: 28)),
                  SizedBox(height: 4),
                  Text('Preparando', style: TextStyle(fontSize: 12)),
                ],
              ),
              Column(
                children: [
                  Text('🛵', style: TextStyle(fontSize: 28)),
                  SizedBox(height: 4),
                  Text('En camino', style: TextStyle(fontSize: 12)),
                ],
              ),
              Column(
                children: [
                  Text('⚪', style: TextStyle(fontSize: 28)),
                  SizedBox(height: 4),
                  Text('Entregado', style: TextStyle(fontSize: 12)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
