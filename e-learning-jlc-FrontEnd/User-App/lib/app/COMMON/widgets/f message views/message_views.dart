import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class TNoDataFoundMessage extends StatelessWidget {
  const TNoDataFoundMessage({super.key, this.message});

  final String? message;

  @override
  Widget build(BuildContext context) {
    return Text(
      message ?? "No Data!",
      style: Theme.of(
        context,
      ).textTheme.bodySmall!.copyWith(color: TColors.warning),
    );
  }
}
