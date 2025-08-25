import 'package:flutter/material.dart';
import 'package:e_learning_jlc_admin_panel/app/COMMON/styles/input_filed_styles.dart';


class TDropdownInputWidget extends StatelessWidget {
  final dynamic items; // List<String> or List<Map>
  final String? hint;
  final String? value;
  final void Function(String?) onChanged;
  final String? displayKey; // for Map list display

  const TDropdownInputWidget({
    super.key,
    required this.items,
    required this.onChanged,
    this.hint,
    this.value,
    this.displayKey,
  });

  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem<String>> dropdownItems = [];

    if (items is List<String>) {
      dropdownItems = (items as List<String>)
          .map(
            (item) => DropdownMenuItem<String>(
              value: item,
              child: Text(item, style: Theme.of(context).textTheme.bodyLarge),
            ),
          )
          .toList();
    } else if (items is List<Map<String, dynamic>> && displayKey != null) {
      dropdownItems = (items as List<Map<String, dynamic>>)
          .map(
            (item) => DropdownMenuItem<String>(
              value: item[displayKey].toString(),
              child: Text(
                item[displayKey].toString(),
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          )
          .toList();
    }

    return DropdownButtonFormField<String>(
      value: value,
      hint: hint != null ? Text(hint!) : null,
      items: dropdownItems,
      onChanged: onChanged,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        border: TInpuFieldStyles.outlineInputBorder,
        enabledBorder: TInpuFieldStyles.outlineInputBorder,
        disabledBorder: TInpuFieldStyles.outlineInputBorder,
        focusedBorder: TInpuFieldStyles.focusedBorder,
      ),
    );
  }
}
