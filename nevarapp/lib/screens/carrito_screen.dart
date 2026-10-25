import 'package:flutter/material.dart';
import 'package:nevarapp/colores.dart';
import 'package:nevarapp/components/barra_navegacion.dart';
import 'package:nevarapp/components/boton_principal.dart';
import 'package:nevarapp/components/item_carrito.dart';

/// Cart: products, quantities, total and delivery address.
class CarritoScreen extends StatelessWidget {
  const CarritoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fondo,
      appBar: AppBar(
        title: const Text('Mi carrito'),
        backgroundColor: fondo,
        foregroundColor: medianoche,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const ItemCarrito(
                emoji: '🍎',
                nombre: 'Manzana roja',
                detalle: '2 × \$6.500',
              ),
              const SizedBox(height: 12),
              const ItemCarrito(
                emoji: '🥭',
                nombre: 'Mango',
                detalle: '1 × \$5.900',
              ),
              const SizedBox(height: 24),
              const Row(
                children: [
                  Expanded(
                    child: Text('Total', style: TextStyle(fontSize: 18)),
                  ),
                  Text(
                    '\$18.900',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: cielo,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Entregar en', style: TextStyle(color: medianoche)),
                    Text(
                      'Calle 5 #20-10',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: medianoche,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              const BotonPrincipal(label: 'Confirmar pedido'),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BarraNavegacion(indice: 1),
    );
  }
}
