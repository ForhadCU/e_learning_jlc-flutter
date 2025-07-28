import 'package:flutter/material.dart';
import 'package:e_learning_jlc_admin_panel/app/COMMON/widgets/texts/clickable_text.dart';
import 'package:e_learning_jlc_admin_panel/app/UTILS/constants/sizes.dart';
import 'package:e_learning_jlc_admin_panel/app/UTILS/extensions/extensions.dart';

class TMultipleTextWidget extends StatelessWidget {
  const TMultipleTextWidget({
    super.key,
    required this.label,
    required this.clickableText,
    required this.onClick,
  });

  final String clickableText;
  final String label;
  final void Function() onClick;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(label, style: Theme.of(context).textTheme.bodySmall),
        TSizes.xs.width,
        TClickableText(
          onClick: () {
            onClick();
          },
          text: clickableText,
        ),
      ],
    );
  }
}
