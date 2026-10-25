import 'package:flutter/material.dart';

/// Card with the total of the order.
class ResumenTotal extends StatelessWidget {
  final String total;

  const ResumenTotal({super.key, required this.total});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xFFF7C8D3), width: 2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          const Expanded(
            child: Text(
              'Total',
              style: TextStyle(fontSize: 18, color: Color(0xFF2D3A47)),
            ),
          ),
          Text(
            total,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFFB46A72),
            ),
          ),
        ],
      ),
    );
  }
}
