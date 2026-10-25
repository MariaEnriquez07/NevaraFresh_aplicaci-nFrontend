import 'package:flutter/material.dart';
import 'package:nevarapp/components/boton_principal.dart';
import 'package:nevarapp/components/boton_secundario.dart';

/// Login screen: email and password.
class EntrarScreen extends StatelessWidget {
  const EntrarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF7E6),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 220,
                decoration: BoxDecoration(
                  color: const Color(0xFFF7C8D3),
                  borderRadius: BorderRadius.circular(32),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('🥬 🍎 🥕', style: TextStyle(fontSize: 48)),
                    SizedBox(height: 8),
                    Text(
                      'NevaraFresh',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFB46A72),
                      ),
                    ),
                    Text(
                      'Frescos a tu puerta',
                      style: TextStyle(color: Color(0xFF2D3A47)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              const Text(
                '¡Hola de nuevo!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2D3A47),
                ),
              ),
              const Text(
                'Entra para pedir tus frescos',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 24),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Correo',
                  prefixIcon: Icon(Icons.mail),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 24),
              const BotonPrincipal(label: 'Entrar'),
              const SizedBox(height: 12),
              const BotonSecundario(label: 'Crear cuenta'),
            ],
          ),
        ),
      ),
    );
  }
}
