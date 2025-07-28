import 'package:e_learning_jlc_admin_panel/app/UTILS/constants/enums.dart';
import 'package:flutter/material.dart';

import '../../../../UTILS/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
class TLayoutShapeTemplate extends StatelessWidget {
  const TLayoutShapeTemplate({
    super.key,
    required this.bodySize,
    required this.body,
  });
  final Widget body;
  final BodySize bodySize;
  @override
  Widget build(BuildContext context) {
    double width;
    // set body size
    switch (bodySize) {
      case BodySize.small:
        width = TDeviceUtils.getScreenWidth() / 3;
        break;
      case BodySize.medium:
        width = TDeviceUtils.getScreenWidth() / 2;
        break;
      default:
        width = TDeviceUtils.getScreenWidth();
    }
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: TSizes.md,
          horizontal: TSizes.lg,
        ),
        width: width,
        child: body,
      ),
    );
  }
}
