import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/sizes.dart';

Widget tCircularLoading({bool? isShownText}) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: Get.size.longestSide / 40,
          width: Get.size.longestSide / 40,
          child: CircularProgressIndicator(
            color: Colors.black12,
            strokeWidth: .5,
          ),
        ),
        Visibility(
          visible: isShownText ?? true,
          child: Container(
            margin: EdgeInsets.only(top: TSizes.md),
            child: Text(
              "Please wait...",
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
          ),
        ),
      ],
    ),
  );
}
