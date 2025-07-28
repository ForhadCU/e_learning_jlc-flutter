import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:e_learning_jlc_admin_panel/app/COMMON/controllers/checkbox_controller.dart';

class TCheckBox extends StatelessWidget {
  const TCheckBox({super.key, required this.label, required this.onChanged});

  final String label;
  final void Function(bool) onChanged;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CheckboxController());
    return Obx(
      () => CheckboxListTile(
        value: controller.isChecked.value,
        onChanged: (value) {
          controller.mToggleCheckUncheck();
          onChanged(value ?? false);
        },
        dense: true,
        title: Text(label),
        controlAffinity: ListTileControlAffinity.leading,
        activeColor: Colors.blue,
        contentPadding: EdgeInsets.zero,
      ),
    );
  }
}
