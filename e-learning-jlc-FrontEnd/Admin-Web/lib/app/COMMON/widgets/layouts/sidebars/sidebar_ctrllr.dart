import 'package:get/get.dart';

import '../../../../utils/device/device_utility.dart';

class SidebarCtrllr extends GetxController {
  // final activeItem = Routes.ALL_BOXES.obs;
  final hoverItem = ''.obs;

  void changeActiveItem(String routeName) {
    // activeItem.value = routeName;
  }

  void changeHoverItem(String routeName) {
    if (!isActive(routeName)) hoverItem.value = routeName;
  }

  bool isActive(String routeName) {
    // return activeItem.value == routeName;
    return true;
  }

  bool isHovering(String routeName) {
    return hoverItem.value == routeName;
  }

  void menuOnTap(String routeName) {
    if (!isActive(routeName)) {
      changeActiveItem(routeName);
      if (TDeviceUtils.isMobileScreen(context: Get.context!)) {
        Get.back();
      }
      Get.toNamed(routeName);
    }
  }
}
