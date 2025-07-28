import '../../utils/constants/colors.dart';
import 'package:flutter/material.dart';

class MyShadowStyle {
  static final verticalProductShadow = BoxShadow(
    color: TColors.darkGrey,
    blurRadius: 50,
    spreadRadius: 7,
    offset: Offset(0, 2),
  );
  static final horizontalProductShadow = BoxShadow(
    color: TColors.darkGrey,
    blurRadius: 50,
    spreadRadius: 7,
    offset: Offset(0, 2),
  );
}
