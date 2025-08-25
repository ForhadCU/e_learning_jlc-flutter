import 'package:flutter/material.dart';

import 'app/UTILS/test/widget_test.dart';

void main() {
  runApp(
    const MaterialApp(debugShowCheckedModeBanner: false, home: TestMyWidget()),
  );
} // Path to the actual widget

class TestMyWidget extends StatelessWidget {
  const TestMyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Test My Widget")),
      body: /* SizedBox(
        width: TDeviceUtils.getScreenWidth() / 2,
        height: TDeviceUtils.getScreenHeight(),
        child: Center(
          child: TDropdownInputFieldWidget(
            labelText: "Select Item",
            items: ["Item 1", "Item 2", "Item 3"],
            hintText: "Select Item hint",
        
          ), // Put your widget here
        ), */ Padding(
        padding: const EdgeInsets.all(48.0),
        child: Center(
          child: InteractiveVideoPlayer(videoUrl: 'https://www.youtube.com/watch?v=ECh1rS2ipJw&list=RDcJZ_d94RSPQ&index=3',), // Put your widget here
        ),
      ),
    );
  }
}
