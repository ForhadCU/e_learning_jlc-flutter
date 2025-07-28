import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../COMMON/controllers/dropdown_controller.dart';
import '../../utils/constants/colors.dart';

class TDropdownInputFieldWidget extends StatelessWidget {
  const TDropdownInputFieldWidget({
    super.key,
    required this.labelText,
    required this.items,
    required this.hintText,
  });
  final String labelText;
  final List<String> items;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DropdownController());
    return Obx(
      () => DropdownButtonFormField<String>(
        value: controller.selectedValue.value.isEmpty
            ? null
            : controller.selectedValue.value,
        hint: Text(hintText),
        items: items
            .map((item) => DropdownMenuItem(value: item, child: Text(item)))
            .toList(),
        onChanged: controller.setValue,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 14,
            horizontal: 12,
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: TColors.neutrals20),
            borderRadius: BorderRadius.circular(2),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: TColors.neutrals20),
            borderRadius: BorderRadius.circular(2),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: TColors.neutrals20),
            borderRadius: BorderRadius.circular(2),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: TColors.neutrals20),
            borderRadius: BorderRadius.circular(2),
          ),
        ),
      ),
    );
  }
}
