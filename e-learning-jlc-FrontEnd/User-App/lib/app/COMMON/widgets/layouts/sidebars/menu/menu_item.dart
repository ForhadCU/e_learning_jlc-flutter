import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../sidebar_ctrllr.dart';

class TMenuItem extends StatelessWidget {
  const TMenuItem({
    super.key,
    required this.iconPath,
    required this.itemName,
    required this.routeName,
  });

  final IconData iconPath;
  final String itemName;
  final String routeName;

  @override
  Widget build(BuildContext context) {
    final sidebarCtrllr = Get.put(SidebarCtrllr());
    return InkWell(
      onTap: () {
        sidebarCtrllr.menuOnTap(routeName);
      },
      onHover: (isHovering) {
        if (isHovering) {
          sidebarCtrllr.changeHoverItem(routeName);
        } else {
          sidebarCtrllr.changeHoverItem('');
        }
      },
      child: Obx(
        () => Padding(
          padding: const EdgeInsets.symmetric(vertical: TSizes.xs),
          child: Container(
            decoration: BoxDecoration(
              color:
                  sidebarCtrllr.isHovering(routeName) ||
                      sidebarCtrllr.isActive(routeName)
                  ? TColors.primary
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(TSizes.cardRadiusMd),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: TSizes.md,
                right: TSizes.sm,
                top: TSizes.sm,
                bottom: TSizes.sm,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  sidebarCtrllr.isActive(routeName) ||
                          sidebarCtrllr.isHovering(routeName)
                      ? Icon(
                          iconPath,
                          color: TColors.white,
                          size: TSizes.iconSm,
                        )
                      : Icon(
                          iconPath,
                          color: TColors.grey,
                          size: TSizes.iconSm,
                        ),
                  const SizedBox(width: TSizes.sm),
                  sidebarCtrllr.isActive(routeName) ||
                          sidebarCtrllr.isHovering(routeName)
                      ? Flexible(
                          child: Text(
                            itemName,
                            style: Theme.of(context).textTheme.bodyMedium!
                                .copyWith(color: TColors.white),
                          ),
                        )
                      : Flexible(
                          child: Text(
                            itemName,
                            style: Theme.of(context).textTheme.bodyMedium!
                                .copyWith(color: TColors.darkerGrey),
                          ),
                        ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
