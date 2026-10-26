import 'package:flutter/material.dart';

/// Loading state: soft blocks while the data arrives.
class EstadoCargando extends StatelessWidget {
  const EstadoCargando({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: 72,
          decoration: BoxDecoration(
            color: const Color(0xFFF7C8D3),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        const SizedBox(height: 12),
        Container(
          height: 72,
          decoration: BoxDecoration(
            color: const Color(0xFFF7C8D3),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        const SizedBox(height: 12),
        Container(
          height: 72,
          decoration: BoxDecoration(
            color: const Color(0xFFF7C8D3),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        const SizedBox(height: 12),
        Container(
          height: 72,
          decoration: BoxDecoration(
            color: const Color(0xFFF7C8D3),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        const SizedBox(height: 24),
        const Center(
          child: Text('Cargando...', style: TextStyle(color: Colors.grey)),
        ),
      ],
    );
  }
}
