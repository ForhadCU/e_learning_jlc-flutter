import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class TRoundedButton extends StatelessWidget {
  const TRoundedButton({
    super.key,
    this.buttonText = '',
    required this.buttonIconData,
    this.buttonTextColor = TColors.white,
    this.buttonIconColor = TColors.white,
    required this.buttonBgColor,
    this.buttonHeight = 40,
    this.buttonBorderRadius = TSizes.xs,
    this.buttonIconSize = TSizes.iconSm,
  });

  final String buttonText;
  final IconData buttonIconData;
  final Color buttonTextColor;
  final Color buttonIconColor;
  final Color buttonBgColor;
  final double buttonHeight;
  final double buttonBorderRadius;
  final double buttonIconSize;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        // maximumSize: Size(0, buttonHeight),
        padding: EdgeInsets.symmetric(horizontal: TSizes.sm),
        backgroundColor: buttonBgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(buttonBorderRadius),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            buttonText,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium!.copyWith(color: buttonTextColor, fontSize: 12),
          ),

          buttonText != '' ? const SizedBox(width: TSizes.sm) : Container(),
          Icon(buttonIconData, size: buttonIconSize),
        ],
      ),
    );
  }
}
