// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../UTILS/constants/image_strings.dart';
import '../../../../common/widgets/custom_shapes/images/circular_image.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';

class TAppbarHeader extends StatelessWidget implements PreferredSizeWidget {
  const TAppbarHeader({super.key, this.scafoldKey});

  final GlobalKey<ScaffoldState>? scafoldKey;

  @override
  Widget build(BuildContext context) {
    Locale currentLocale = Get.locale ?? Locale('en', 'US');
    bool isJapanese = currentLocale.languageCode == 'ja';
    return Container(
      decoration: BoxDecoration(
        color: TColors.white,
        border: Border(bottom: BorderSide(color: TColors.grey, width: 1)),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: TSizes.md,
        vertical: TSizes.sm / 2,
      ),
      child: AppBar(
        leading: TDeviceUtils.isMobileScreen(context: context)
            ? IconButton(
                onPressed: () {
                  scafoldKey?.currentState?.openDrawer();
                },
                icon: const Icon(Iconsax.menu, color: TColors.darkerGrey),
              )
            : Container(),
        actions: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Language Change button
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: TColors.grey),
                  borderRadius: BorderRadius.circular(TSizes.sm),
                ),
                child: Row(
                  children: [
                    IconButton(
                      hoverColor: Colors.transparent,

                      highlightColor: Colors.transparent,
                      tooltip: isJapanese ? 'Switch to English' : '日本語に切り替え',
                      icon: Text(
                        isJapanese
                            ? 'Switch to English  🇺🇸'
                            : '日本語に切り替え  🇯🇵',
                        style: TextStyle(fontSize: 14),
                      ),
                      onPressed: () {
                        Locale newLocale = isJapanese
                            ? Locale('en', 'US')
                            : Locale('ja', 'JP');
                        Get.updateLocale(newLocale);
                      },
                    ),
                  ],
                ),
              ),

              // Notification icon
              Container(
                margin: EdgeInsets.only(left: TSizes.spaceBtwItems),
                child: IconButton(
                  onPressed: () {
                    Get.updateLocale(Locale('ja', 'JP'));
                    print("Language is Updated");
                  },
                  icon: Icon(Iconsax.notification, color: TColors.darkerGrey),
                ),
              ),
              const SizedBox(width: TSizes.sm),

              // User image
              /* ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: CircleAvatar(
                  radius: 16,
                  child: Image(
                    image: AssetImage(TImageString.logo_user_1),
                    width: 24,
                    height: 24,
                  ),
                ),
              ), */
              TCircularImage(
                imagePath: TImageString.logo_user_2,
                size: 32,
                isNetwork: false,
                fit: BoxFit.contain,
                borderColor: TColors.grey,
                borderWidth: 1,
              ),
              const SizedBox(width: TSizes.sm),

              // Name and Email
              !TDeviceUtils.isMobileScreen(context: context)
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Jhon Chang",
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                        Text(
                          "jhon.chang1232@gmail.com",
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ],
                    )
                  : Container(),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
