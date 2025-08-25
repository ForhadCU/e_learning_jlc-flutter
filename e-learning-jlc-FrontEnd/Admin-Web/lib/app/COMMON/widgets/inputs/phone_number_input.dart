import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:e_learning_jlc_admin_panel/app/COMMON/widgets/inputs/text_input_field.dart';
import 'package:e_learning_jlc_admin_panel/app/utils/constants/colors.dart';

class TPhoneNumberInputFieldWidget extends StatelessWidget {
  const TPhoneNumberInputFieldWidget({
    super.key,
    required this.onChanged,
    required this.textEditingController,
  });

  final ValueChanged<CountryCode> onChanged;
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return TCustomTextInputField(
      controller: textEditingController,
      hintText: "Enter phone",
      labelText: "Phone Number",
      prefixIcon: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CountryCodePicker(
            padding: EdgeInsets.symmetric(horizontal: 0),
            onChanged: (value) => onChanged,
            // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
            initialSelection: 'BD',
            favorite: ['+880', 'BD'],
            // optional. Shows only country name and flag
            showCountryOnly: false,
            // optional. Shows only country name and flag when popup is closed.
            showOnlyCountryWhenClosed: false,
            // optional. aligns the flag and the Text left
            alignLeft: false,
            headerText: "Select Country Code",
            textStyle: Theme.of(context).textTheme.bodyLarge,
          ),
          Icon(Icons.arrow_drop_down, color: TColors.inputFieldIcon),
        ],
      ),
    );
  }
}
