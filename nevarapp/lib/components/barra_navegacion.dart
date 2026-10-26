import 'package:flutter/material.dart';

/// Bottom navigation bar (Inicio, Pedidos, Perfil).
class BarraNavegacion extends StatelessWidget {
  final int indiceActivo;
  final ValueChanged<int>? onTap;

  const BarraNavegacion({
    super.key,
    required this.indiceActivo,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: indiceActivo,
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
        BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Pedidos'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
      ],
    );
  }
}
