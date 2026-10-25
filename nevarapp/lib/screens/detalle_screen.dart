import 'package:flutter/material.dart';
import 'package:nevarapp/colores.dart';
import 'package:nevarapp/components/boton_principal.dart';

/// Detail of one product: photo, name, presentation, price and quantity.
class DetalleScreen extends StatelessWidget {
  const DetalleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fondo,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            print('Volver');
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text('Detalle'),
        backgroundColor: fondo,
        foregroundColor: medianoche,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  color: salvia,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: const Center(
                  child: Text('🍎', style: TextStyle(fontSize: 96)),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Manzana roja',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: medianoche,
                ),
              ),
              const Text('Bolsa de 1 kg', style: TextStyle(color: Colors.grey)),
              const SizedBox(height: 8),
              const Text(
                '\$6.500',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: rosewood,
                ),
              ),
              const SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  color: petalo,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        print('Restar');
                      },
                      icon: const Icon(Icons.remove),
                    ),
                    const Text(
                      '1',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      onPressed: () {
                        print('Sumar');
                      },
                      icon: const Icon(Icons.add),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              const BotonPrincipal(label: 'Agregar al carrito'),
            ],
          ),
        ),
      ),
    );
  }
}
