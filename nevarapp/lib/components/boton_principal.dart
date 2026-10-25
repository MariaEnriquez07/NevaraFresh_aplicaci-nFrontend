import 'package:flutter/material.dart';

/// Main action button of the app (Entrar, Agregar, Confirmar).
class BotonPrincipal extends StatelessWidget {
  final String label;

  const BotonPrincipal({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 52,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFB46A72),
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                print(label);
              },
              child: Text(
                label,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
