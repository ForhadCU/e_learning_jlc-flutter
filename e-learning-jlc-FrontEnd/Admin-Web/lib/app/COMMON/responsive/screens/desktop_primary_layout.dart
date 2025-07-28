import 'package:flutter/material.dart';

import '../../widgets/layouts/headers/appbar_header.dart';
import '../../widgets/layouts/sidebars/sidebar.dart';

class DesktopPrimaryLayout extends StatelessWidget {
  const DesktopPrimaryLayout({super.key, this.body});

  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: TSidebar()),
        Expanded(
          flex: 5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              TAppbarHeader(),

              // Body
              body ?? Container(),
              /* Expanded(
                child: Column(
                  children: [
                    Text('data'),
                    Expanded(
                      child: ListView.builder(
                        itemBuilder: (_, index) {
                          return Container(
                            margin: EdgeInsets.all(24),
                            child: Text(index.toString()),
                          );
                        },
                        itemCount: 20,
                      ),
                    ),
                  ],
                ),
              ), */
            ],
          ),
        ),
      ],
    );
  }
}
