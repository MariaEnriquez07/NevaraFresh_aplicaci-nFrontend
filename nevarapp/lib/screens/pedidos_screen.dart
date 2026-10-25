import 'package:flutter/material.dart';
import 'package:nevarapp/components/pasos_pedido.dart';
import 'package:nevarapp/components/tarjeta_pedido.dart';

/// Orders: the one in progress and the history.
class PedidosScreen extends StatelessWidget {
  const PedidosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF7E6),
      appBar: AppBar(
        title: const Text('Mis pedidos'),
        backgroundColor: const Color(0xFFFFF7E6),
        foregroundColor: const Color(0xFF2D3A47),
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'En curso',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2D3A47),
                ),
              ),
              SizedBox(height: 12),
              PasosPedido(),
              SizedBox(height: 24),
              Text(
                'Historial',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2D3A47),
                ),
              ),
              SizedBox(height: 12),
              TarjetaPedido(
                numero: 'Pedido #1038',
                fecha: '20 oct 2026',
                estado: 'Entregado',
                total: '\$32.400',
              ),
              SizedBox(height: 12),
              TarjetaPedido(
                numero: 'Pedido #1031',
                fecha: '12 oct 2026',
                estado: 'Entregado',
                total: '\$9.800',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Pedidos'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        ],
      ),
    );
  }
}
