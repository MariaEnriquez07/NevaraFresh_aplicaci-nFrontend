import 'package:flutter/material.dart';
import 'package:nevarapp/colores.dart';

/// Secondary action button of the app (Crear cuenta).
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
                foregroundColor: rosewood,
                side: BorderSide(color: rosewood),
              ),
              onPressed: () {
                print(label);
              },
              child: Text(label),
            ),
          ),
        ),
      ],
    );
  }
}
