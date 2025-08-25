import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:e_learning_jlc_admin_panel/app/COMMON/controllers/text_inputfield_controller.dart';
import 'package:e_learning_jlc_admin_panel/app/COMMON/styles/input_filed_styles.dart';
import 'package:e_learning_jlc_admin_panel/app/COMMON/widgets/layouts/templates/input_filed_template.dart';
import 'package:e_learning_jlc_admin_panel/app/UTILS/constants/colors.dart';

class TCustomTextInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final bool enabled;
  final bool isPassword;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final FocusNode? focusNode;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onClick;

  const TCustomTextInputField({
    super.key,
    this.hintText,
    this.labelText,
    this.enabled = true,
    this.prefixIcon,
    this.suffixIcon,
    this.focusNode,
    this.controller,
    this.keyboardType,
    this.textInputAction,
    this.validator,
    this.onChanged,
    this.isPassword = false,
    this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    final controllerTextInpuField = Get.put(TextInputfieldController());

    return TInputFieldTemplate(
      inputFieldWidget: _inputFieldWidget(controllerTextInpuField, context),
      labelText: labelText,
    );
  }

  Widget _inputFieldWidget(
    TextInputfieldController controllerTextInpuField,
    BuildContext context,
  ) {
    return Obx(
      () => InkWell(
        onTap: onClick,
        child: TextFormField(
          onTap: onClick,
          enabled: onClick != null ? false : enabled,
          focusNode: focusNode,
          controller: controller,
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          validator: validator,
          onChanged: onChanged,
          obscureText: !controllerTextInpuField.isLoginPassVisible.value,
          style: Theme.of(context).textTheme.bodyLarge,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              vertical: 14,
              horizontal: 12,
            ),
            hintText: hintText,

            hintStyle: Theme.of(
              context,
            ).textTheme.bodyLarge?.apply(color: TColors.neutrals40),
            prefixIcon: prefixIcon,
            suffixIcon: isPassword
                ? InkWell(
                    onTap: () =>
                        controllerTextInpuField.mToggleLoginPassVisibility(),
                    child: Obx(
                      () => Icon(
                        controllerTextInpuField.isLoginPassVisible.value
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: TColors.inputFieldIcon,
                      ),
                    ),
                  )
                : suffixIcon,

            enabledBorder: TInpuFieldStyles.outlineInputBorder,
            focusedBorder: TInpuFieldStyles.focusedBorder,
            disabledBorder: TInpuFieldStyles.outlineInputBorder,
          ),
        ),
      ),
    );
  }
}
