import 'package:flutter/material.dart';
import 'package:e_learning_jlc/app/UTILS/constants/colors.dart';

class TClickableText extends StatelessWidget {
  const TClickableText({
    super.key,
    required this.onClick,
    required this.text,
     this.textTheme,
  });

  final void Function() onClick;
  final String text;
  final TextStyle? textTheme;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onClick(),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Text(text, style: textTheme ?? Theme.of(context).textTheme.labelLarge?.copyWith(color: TColors.primary)),
      ),
    );
  }
}
