import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:e_learning_jlc/app/COMMON/widgets/inputs/text_input_field.dart';
import 'package:e_learning_jlc/app/UTILS/constants/sizes.dart';

class TPhoneNumberInputFieldWidget extends StatelessWidget {
  const TPhoneNumberInputFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TCustomTextInputField(
      hintText: "Enter phone number",
      labelText: "Phone Number",
      prefixIcon: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CountryCodePicker(
            padding: EdgeInsets.symmetric(horizontal: TSizes.sm),
            onChanged: print,
            // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
            initialSelection: 'BD',
            favorite: ['+880', 'BD'],
            // optional. Shows only country name and flag
            showCountryOnly: false,
            // optional. Shows only country name and flag when popup is closed.
            showOnlyCountryWhenClosed: false,
            // optional. aligns the flag and the Text left
            alignLeft: false,
          ),
          Icon(Icons.arrow_drop_down,)
        ],
      ),
    );

    /*  */
  }
}
