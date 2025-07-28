import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:e_learning_jlc/app/UTILS/constants/colors.dart';
import 'package:e_learning_jlc/app/UTILS/extensions/extensions.dart';
import 'package:e_learning_jlc/app/UTILS/logging/logger.dart';

import '../../../utils/constants/sizes.dart';

class TCountryPicker extends StatelessWidget {
  final TextEditingController? controller;
  const TCountryPicker({super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    // final controllerTextInpuField = Get.put(TextInputfieldController());

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Label
        Text("Nationality", style: Theme.of(context).textTheme.labelLarge),
        TSizes.sm.height,
        InkWell(
          hoverColor: Colors.transparent,
          onTap: () => showCountryPicker(
            context: context,
            onSelect: (Country countryDetails) {
              TLogger.info(countryDetails.name);
            },
            favorite: ["BD", "JP"],
          ),
          child: TextFormField(
            enabled: false,
            controller: controller,
            style: Theme.of(context).textTheme.bodyLarge,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(
                vertical: 14,
                horizontal: 12,
              ),
              hintText: "Select Nationality",

              hintStyle: Theme.of(
                context,
              ).textTheme.bodyLarge?.apply(color: TColors.neutrals40),
              suffixIcon: Icon(
                Icons.arrow_drop_down,
                color: TColors.inputFieldIcon,
              ),

              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: TColors.neutrals20),
                borderRadius: BorderRadius.circular(2),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: TColors.neutrals20,
                  width: 1.5,
                ),
                borderRadius: BorderRadius.circular(2),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: TColors.neutrals20),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
