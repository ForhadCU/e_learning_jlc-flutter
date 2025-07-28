import 'package:flutter/material.dart';

import '../../widgets/layouts/headers/appbar_header.dart';
import '../../widgets/layouts/sidebars/sidebar.dart';

class MobileLayout extends StatelessWidget {
  MobileLayout({super.key, this.body});

  final Widget? body;
  final GlobalKey<ScaffoldState> scafoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scafoldKey,
      drawer: TSidebar(),
      appBar: TAppbarHeader(scafoldKey: scafoldKey),
      body: Column(
        children: [
          // Body
          body ?? Container(),
        ],
      ),
    );
  }
}
