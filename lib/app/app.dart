import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/color_app.dart';
import '../view_models/controller_bindings.dart';
import 'routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: ControllerBindings(),
      title: 'Goup App',
      theme: ThemeData(
        useMaterial3: true,
        // primaryColor: ColorApp.colorBlack2,
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: ColorApp.colorGrey2,
        ),
      ),
      initialRoute: Routes.splashScreen,
      getPages: Routes.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
