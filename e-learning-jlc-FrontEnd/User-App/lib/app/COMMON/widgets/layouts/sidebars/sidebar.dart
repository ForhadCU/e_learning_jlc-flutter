import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';


import '../../../../UTILS/constants/app_texts.dart';
import '../../../../UTILS/constants/image_strings.dart';
import '../../../../common/widgets/custom_shapes/images/circular_image.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';

class TSidebar extends StatelessWidget {
  const TSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: BeveledRectangleBorder(),
      child: Container(
        padding: const EdgeInsets.only(top: TSizes.sm),
        decoration: BoxDecoration(
          color: TColors.white,
          border: Border(right: BorderSide(color: TColors.grey, width: 1)),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              !TDeviceUtils.isMobileScreen(context: context)
                  ? _vHeadingIconAndTitleForDesktop(context)
                  : _vHeadingIconAndTitleForMobile(context),
              const SizedBox(height: TSizes.spaceBtwSections),
              Padding(
                padding: EdgeInsets.all(TSizes.md),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      TLangKey.menu.tr.toUpperCase(),
                      style: Theme.of(
                        context,
                      ).textTheme.bodySmall!.apply(letterSpacingDelta: 1.2),
                    ),
                    const SizedBox(height: TSizes.xs),

                    // Menu items
                    /*  TMenuItem(
                      iconPath: Iconsax.home,
                      itemName: 'Dashboard',
                      routeName: Routes.HOME,
                    ), */

                    // workable
                    /* TMenuItem(
                      iconPath: Iconsax.box,
                      itemName: TLangKey.allBoxes.tr,
                      routeName: Routes.ALL_BOXES,
                    ),
                    TMenuItem(
                      iconPath: Iconsax.shopping_cart,
                      itemName: TLangKey.allProducts.tr,
                      routeName: Routes.ALL_PRODUCT,
                    ),*/
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row _vHeadingIconAndTitleForDesktop(BuildContext context) {
    return Row(
      children: [
        TCircularImage(
          imagePath: TImageString.logo_fit,
          size: 60,
          borderColor: TColors.white,
        ),
        const SizedBox(width: TSizes.sm),
        Text(
          "FIT Inc",
          style: Theme.of(context).textTheme.titleLarge!.apply(
            color: TColors.primary,
            fontWeightDelta: 2,
          ),
        ),
      ],
    );
  }

  Column _vHeadingIconAndTitleForMobile(BuildContext context) {
    return Column(
      children: [
        TCircularImage(
          imagePath: TImageString.logo_fit,
          size: 60,
          borderColor: TColors.white,
        ),
        const SizedBox(height: TSizes.sm),
        Text(
          "FIT Inc",
          style: Theme.of(context).textTheme.titleLarge!.apply(
            color: TColors.primary,
            fontWeightDelta: 2,
          ),
        ),
      ],
    );
  }
}
