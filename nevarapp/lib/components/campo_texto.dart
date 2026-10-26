import 'package:flutter/material.dart';

/// Text field with label, icon and optional obscure text.
class CampoTexto extends StatelessWidget {
  final String etiqueta;
  final IconData icono;
  final bool oculto;

  const CampoTexto({
    super.key,
    required this.etiqueta,
    required this.icono,
    this.oculto = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: oculto,
      decoration: InputDecoration(
        labelText: etiqueta,
        prefixIcon: Icon(icono),
        border: const OutlineInputBorder(),
      ),
    );
  }
}
