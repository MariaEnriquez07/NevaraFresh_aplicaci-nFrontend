import 'package:flutter/material.dart';

/// Vertical product card for the horizontal carousel of the catalog.
class TarjetaProductoVertical extends StatelessWidget {
  final String emoji;
  final String nombre;
  final String presentacion;
  final String precio;

  const TarjetaProductoVertical({
    super.key,
    required this.emoji,
    required this.nombre,
    required this.presentacion,
    required this.precio,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: const Color(0xFFF7C8D3), width: 2),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 96,
              decoration: BoxDecoration(
                color: const Color(0xFFA8B58A),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: Text(emoji, style: const TextStyle(fontSize: 52)),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              nombre,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2D3A47),
              ),
            ),
            Text(presentacion, style: const TextStyle(color: Colors.grey)),
            const SizedBox(height: 4),
            Row(
              children: [
                Expanded(
                  child: Text(
                    precio,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFB46A72),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    debugPrint(nombre);
                  },
                  icon: const Icon(Icons.add),
                  color: const Color(0xFFB46A72),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
