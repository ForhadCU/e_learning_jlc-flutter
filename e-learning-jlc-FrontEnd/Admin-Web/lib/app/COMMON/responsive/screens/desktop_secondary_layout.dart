import 'package:flutter/material.dart';

import '../../widgets/layouts/headers/secondary_appbar_header.dart';

class DesktopSecondaryLayout extends StatelessWidget {
  const DesktopSecondaryLayout({super.key, required this.body});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Column(children: [TSecondaryAppbarHeader(), body]);
  }
}
