import 'package:flutter/material.dart';
import 'package:nevarapp/components/boton_principal.dart';
import 'package:nevarapp/components/item_carrito.dart';
import 'package:nevarapp/components/resumen_total.dart';
import 'package:nevarapp/components/tarjeta_direccion.dart';

/// Cart: products, total and delivery address.
class CarritoScreen extends StatelessWidget {
  const CarritoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF7E6),
      appBar: AppBar(
        title: const Text('Mi carrito'),
        backgroundColor: const Color(0xFFFFF7E6),
        foregroundColor: const Color(0xFF2D3A47),
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ItemCarrito(
                        emoji: '🍎',
                        nombre: 'Manzana roja',
                        detalle: '2 × \$6.500',
                        subtotal: '\$13.000',
                      ),
                      SizedBox(height: 12),
                      ItemCarrito(
                        emoji: '🥭',
                        nombre: 'Mango',
                        detalle: '1 × \$5.900',
                        subtotal: '\$5.900',
                      ),
                      SizedBox(height: 24),
                      TarjetaDireccion(
                        titulo: 'Entregar en',
                        direccion: 'Calle 5 #20-10',
                      ),
                      SizedBox(height: 12),
                      ResumenTotal(total: '\$18.900'),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              BotonPrincipal(label: 'Confirmar pedido'),
            ],
          ),
        ),
      ),
    );
  }
}
