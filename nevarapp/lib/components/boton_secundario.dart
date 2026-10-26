import 'package:flutter/material.dart';

/// Secondary action button of the app (Crear cuenta, Seguir comprando).
class BotonSecundario extends StatelessWidget {
  final String label;

  const BotonSecundario({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 52,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                foregroundColor: const Color(0xFFB46A72),
                side: const BorderSide(color: Color(0xFFB46A72)),
              ),
              onPressed: () {
                debugPrint(label);
              },
              child: Text(label),
            ),
          ),
        ),
      ],
    );
  }
}
