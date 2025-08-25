import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:e_learning_jlc_admin_panel/app/COMMON/widgets/inputs/text_input_field.dart';
import 'package:e_learning_jlc_admin_panel/app/UTILS/constants/colors.dart';

class TNationalityInputWidget extends StatelessWidget {
  const TNationalityInputWidget({super.key, required this.onChanged});

  final ValueChanged<CountryCode> onChanged;

  @override
  Widget build(BuildContext context) {
    return TCustomTextInputField(
      enabled: true,
      labelText: "Nationality",
      suffixIcon: Icon(Icons.arrow_drop_down, color: TColors.inputFieldIcon),

      prefixIcon: CountryCodePicker(
        padding: EdgeInsets.zero,
        // margin: EdgeInsets.zero,
        onChanged: (value) => onChanged,
        // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
        initialSelection: 'BD',
        favorite: ['+880', 'BD'],
        // optional. Shows only country name and flag
        showCountryOnly: true,
        // optional. Shows only country name and flag when popup is closed.
        showOnlyCountryWhenClosed: true,
        // optional. aligns the flag and the Text left
        alignLeft: true,
        textStyle: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
