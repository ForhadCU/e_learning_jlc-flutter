import 'package:flutter/material.dart';
import 'package:e_learning_jlc_admin_panel/app/UTILS/extensions/extensions.dart';

import '../../../../UTILS/constants/sizes.dart';

class TInputFieldTemplate extends StatelessWidget {
  const TInputFieldTemplate({
    super.key,
    this.labelText,
    required this.inputFieldWidget,
  });

  final String? labelText;
  final Widget inputFieldWidget;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Label
        labelText != null
            ? Column(
                children: [
                  Text(
                    labelText!,
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  TSizes.sm.height,
                ],
              )
            : Container(),
        inputFieldWidget,
      ],
    );
  }
}
