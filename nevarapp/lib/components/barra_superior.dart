import 'package:flutter/material.dart';

/// App bar shared across screens (carrito, detalle, pedidos, estados).
class BarraSuperior extends StatelessWidget implements PreferredSizeWidget {
  final String titulo;
  final bool primary;

  const BarraSuperior({
    super.key,
    required this.titulo,
    this.primary = true,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(titulo),
      backgroundColor: const Color(0xFFFFF7E6),
      foregroundColor: const Color(0xFF2D3A47),
      primary: primary,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
