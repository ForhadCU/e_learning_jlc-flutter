import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/UTILS/theme/theme.dart';
import 'app/routes/app_pages.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "E Learning JLC",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      themeMode: ThemeMode
          .light, // theme will change to dark or light depends on device settings
      theme: MyAppTheme.lightTheme, // this is default theme as light theme
      darkTheme: MyAppTheme.darkTheme, // this is dark theme
      useInheritedMediaQuery: true,
    );
  }
}
