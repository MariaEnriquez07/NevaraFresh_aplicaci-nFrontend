import 'package:flutter/material.dart';
import 'package:nevarapp/components/boton_principal.dart';
import 'package:nevarapp/components/boton_secundario.dart';

/// Order confirmed: success message and next steps.
class ConfirmadoScreen extends StatelessWidget {
  const ConfirmadoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF7E6),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Container(
                  padding: const EdgeInsets.all(32),
                  decoration: BoxDecoration(
                    color: const Color(0xFFA8B58A),
                    borderRadius: BorderRadius.circular(80),
                  ),
                  child: const Text('✅', style: TextStyle(fontSize: 64)),
                ),
              ),
              const SizedBox(height: 24),
              const Center(
                child: Text(
                  '¡Pedido confirmado!',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2D3A47),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              const Center(
                child: Text(
                  'Pedido #1042',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFB46A72),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              const Center(
                child: Text(
                  'Puedes seguirlo en Mis pedidos.',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              const SizedBox(height: 32),
              const BotonPrincipal(label: 'Ver mis pedidos'),
              const SizedBox(height: 12),
              const BotonSecundario(label: 'Seguir comprando'),
            ],
          ),
        ),
      ),
    );
  }
}
