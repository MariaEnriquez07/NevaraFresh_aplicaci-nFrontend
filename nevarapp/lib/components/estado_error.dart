import 'package:flutter/material.dart';
import 'package:nevarapp/components/boton_principal.dart';

/// Error state: when the network or the server fail.
class EstadoError extends StatelessWidget {
  final String mensaje;

  const EstadoError({super.key, required this.mensaje});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Center(
          child: Text(
            '!',
            style: TextStyle(
              fontSize: 64,
              fontWeight: FontWeight.bold,
              color: Color(0xFFB46A72),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Center(
          child: Text(mensaje, style: const TextStyle(color: Colors.grey)),
        ),
        const SizedBox(height: 16),
        const BotonPrincipal(label: 'Reintentar'),
      ],
    );
  }
}
