import 'package:flutter/material.dart';
import 'package:nevarapp/colores.dart';

/// Bottom bar with the main sections of the app.
class BarraNavegacion extends StatelessWidget {
  final int indice;

  const BarraNavegacion({super.key, required this.indice});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: indice,
      backgroundColor: medianoche,
      selectedItemColor: petalo,
      unselectedItemColor: Colors.white,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Inicio',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: 'Carrito',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.receipt_long),
          label: 'Pedidos',
        ),
      ],
    );
  }
}
