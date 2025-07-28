import 'package:flutter/material.dart';

import '../../utils/constants/sizes.dart';

class TResponsiveWidget extends StatelessWidget {
  const TResponsiveWidget({
    super.key,
    required this.desktopBody,
    required this.mobileBody,
  });

  final Widget desktopBody;
  final Widget mobileBody;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        if (constraints.maxWidth <= TSizes.mobileScreenSizeBreakpoint) {
          return mobileBody;
        } else {
          return desktopBody;
        }
      },
    );
  }
}
