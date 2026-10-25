import 'package:flutter/material.dart';

/// Big highlighted banner with a title, a subtitle and a big emoji.
class BannerDestacado extends StatelessWidget {
  final String titulo;
  final String subtitulo;
  final String emoji;

  const BannerDestacado({
    super.key,
    required this.titulo,
    required this.subtitulo,
    required this.emoji,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFFB46A72),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titulo,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 4),
                Text(subtitulo, style: const TextStyle(color: Colors.white)),
                const SizedBox(height: 12),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFF7E6),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    'Pedir ahora',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFB46A72),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          Text(emoji, style: const TextStyle(fontSize: 72)),
        ],
      ),
    );
  }
}
