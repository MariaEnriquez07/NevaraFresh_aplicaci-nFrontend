import 'package:flutter/material.dart';

/// Title of a section, with a link on the right.
class EncabezadoSeccion extends StatelessWidget {
  final String title;
  final String actionLabel;

  const EncabezadoSeccion({
    super.key,
    required this.title,
    required this.actionLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2D3A47),
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            debugPrint(actionLabel);
          },
          child: Text(actionLabel),
        ),
      ],
    );
  }
}
