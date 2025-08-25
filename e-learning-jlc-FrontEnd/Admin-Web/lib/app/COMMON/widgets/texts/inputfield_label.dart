import 'package:flutter/material.dart';

class TInputFieldLabel extends StatelessWidget {
  const TInputFieldLabel({super.key, required this.labelText});

  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(labelText, style: Theme.of(context).textTheme.labelLarge),
      ],
    );
  }
}
