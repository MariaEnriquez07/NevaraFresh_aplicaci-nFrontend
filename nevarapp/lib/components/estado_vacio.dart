import 'package:flutter/material.dart';
import 'package:nevarapp/components/boton_secundario.dart';

/// Empty state: when there is nothing to show.
class EstadoVacio extends StatelessWidget {
  final String mensaje;
  final String boton;

  const EstadoVacio({super.key, required this.mensaje, required this.boton});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Center(
          child: Icon(Icons.search, size: 72, color: Color(0xFFA8B7C6)),
        ),
        const SizedBox(height: 16),
        Center(
          child: Text(mensaje, style: const TextStyle(color: Colors.grey)),
        ),
        const SizedBox(height: 16),
        BotonSecundario(label: boton),
      ],
    );
  }
}
