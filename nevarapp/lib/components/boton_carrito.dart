import 'package:flutter/material.dart';

/// Small cart button for the top of the catalog.
class BotonCarrito extends StatelessWidget {
  final String label;

  const BotonCarrito({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFB46A72),
        foregroundColor: Colors.white,
      ),
      onPressed: () {
        debugPrint(label);
      },
      child: Text(label),
    );
  }
}
