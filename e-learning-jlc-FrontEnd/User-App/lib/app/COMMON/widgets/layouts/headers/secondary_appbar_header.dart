import 'package:flutter/material.dart';
import 'package:e_learning_jlc/app/COMMON/widgets/custom_shapes/images/circular_image.dart';
import 'package:e_learning_jlc/app/COMMON/widgets/texts/brand_name.dart';
import 'package:e_learning_jlc/app/UTILS/constants/colors.dart';
import 'package:e_learning_jlc/app/UTILS/constants/image_strings.dart';
import 'package:e_learning_jlc/app/UTILS/device/device_utility.dart';

import '../../../../utils/constants/sizes.dart';

class TSecondaryAppbarHeader extends StatelessWidget
    implements PreferredSizeWidget {
  const TSecondaryAppbarHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: TColors.white),
      padding: EdgeInsets.symmetric(horizontal: TSizes.lg, vertical: TSizes.sm),
      child: AppBar(
        leading: TCircularImage(imagePath: TImageString.lg_openset_demo),

        title: TBrandNameText(),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
