import 'package:flutter/material.dart';
import 'package:e_learning_jlc/app/COMMON/responsive/screens/desktop_secondary_layout.dart';

import '../../../../common/responsive/responsive_design.dart';
import '../../../../common/responsive/screens/desktop_primary_layout.dart';
import '../../../../common/responsive/screens/mobile_layout.dart';

class TSiteTemplate extends StatelessWidget {
  const TSiteTemplate({
    super.key,
    this.desktopBody,
    this.mobileBody,
    this.isUseLayout = true,
  });

  /// The body of the template.
  final Widget? desktopBody;
  final Widget? mobileBody;
  final bool isUseLayout;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TResponsiveWidget(
        desktopBody: isUseLayout
            ? DesktopPrimaryLayout(body: desktopBody ?? Container())
            : DesktopSecondaryLayout(
                body: desktopBody ?? Container(),
              ), // modified
        mobileBody: isUseLayout
            ? MobileLayout(body: mobileBody ?? desktopBody)
            : mobileBody ?? desktopBody ?? Container(),
      ),
    );
  }
}
