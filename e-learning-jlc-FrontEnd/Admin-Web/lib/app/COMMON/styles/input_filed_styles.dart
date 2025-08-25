import 'package:flutter/material.dart';

import '../../UTILS/constants/colors.dart';

class TInpuFieldStyles {
  TInpuFieldStyles._();

  static OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderSide: const BorderSide(color: TColors.neutrals20),
    borderRadius: BorderRadius.circular(2),
  );

  static OutlineInputBorder focusedBorder = OutlineInputBorder(
    borderSide: const BorderSide(color: TColors.neutrals20, width: 1.5),
    borderRadius: BorderRadius.circular(2),
  );
}
