import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';


class TPrimaryButton extends StatelessWidget {
  const TPrimaryButton({super.key, this.height = 48});
  final double height;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: TSizes.xs,
                horizontal: TSizes.md,
              ),
              height: height,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: TColors.primary,
                borderRadius: BorderRadius.circular(2),
                boxShadow: [
                  BoxShadow(
                    color: TColors.darkGrey,
                    offset: Offset(2, 2),
                    blurRadius: 2,
                  ),
                ],
              ),
              child: Text(
                "Login",
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(color: TColors.textWhite),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
