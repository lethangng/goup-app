import 'package:get/get.dart';

import '../../app/routes.dart';

class SplashViewModel extends GetxController {
  @override
  void onInit() {
    goToRegisterScreen();
    super.onInit();
  }

  void goToRegisterScreen() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.offAllNamed(Routes.home);
    });
  }
}
