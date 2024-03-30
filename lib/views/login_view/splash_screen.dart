import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../utils/color_app.dart';
import '../../view_models/controller_notification.dart';
import '../../view_models/login_view_models/splash_view_model.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
  final SplashViewModel splashViewModel = Get.put(SplashViewModel());

  final ControllerNotification notification = Get.put(ControllerNotification());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      color: ColorApp.colorBlack2,
      child: Center(
        child: Image.asset(
          'assets/images/splash_image.png',
          width: size.width * 0.5,
          fit: BoxFit.cover,
        ),
        // child: SvgPicture.asset(
        //   'assets/images/splash_image.svg',
        //   fit: BoxFit.cover,
        //   width: size.width * 0.5,
        // ),
      ),
    );
  }
}
