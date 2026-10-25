import 'package:flutter/material.dart';
import 'package:nevarapp/components/boton_principal.dart';
import 'package:nevarapp/components/pildora_info.dart';

/// Detail of one product: photo, name, presentation, price and quantity.
class DetalleScreen extends StatelessWidget {
  const DetalleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF7E6),
      appBar: AppBar(
        title: const Text('Detalle'),
        backgroundColor: const Color(0xFFFFF7E6),
        foregroundColor: const Color(0xFF2D3A47),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 240,
                decoration: BoxDecoration(
                  color: const Color(0xFFA8B58A),
                  borderRadius: BorderRadius.circular(32),
                ),
                child: const Center(
                  child: Text('🍎', style: TextStyle(fontSize: 120)),
                ),
              ),
              const SizedBox(height: 20),
              const Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Manzana roja',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2D3A47),
                          ),
                        ),
                        Text(
                          'Bolsa de 1 kg',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    '\$6.500',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFB46A72),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Row(
                children: [
                  PildoraInfo(texto: '🌿 Fresca'),
                  SizedBox(width: 8),
                  PildoraInfo(texto: '🚚 Domicilio'),
                ],
              ),
              const SizedBox(height: 16),
              const Text(
                'Manzana roja fresca, lista para comer o para tus ensaladas.',
                style: TextStyle(color: Color(0xFF2D3A47)),
              ),
              const SizedBox(height: 24),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFF7C8D3),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        print('Restar');
                      },
                      child: const Text(
                        '−',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2D3A47),
                        ),
                      ),
                    ),
                    const Text(
                      '1',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2D3A47),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        print('Sumar');
                      },
                      child: const Text(
                        '+',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2D3A47),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              const BotonPrincipal(label: 'Agregar al carrito'),
            ],
          ),
        ),
      ),
    );
  }
}
