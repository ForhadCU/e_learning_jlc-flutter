import 'package:flutter/material.dart';
import 'package:e_learning_jlc_admin_panel/app/UTILS/constants/colors.dart';

class TBrandNameText extends StatelessWidget {
  const TBrandNameText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("e_learning_jlc_admin_panel", style: Theme.of(context).textTheme.headlineSmall?.apply(color: TColors.primary),);
  }
}