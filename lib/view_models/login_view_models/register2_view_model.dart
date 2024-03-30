import 'package:get/get.dart';

import '../google_sign_in/google_signin_api.dart';

class Register2ViewModel extends GetxController {
  Future<void> signIn() async {
    final user = await GoogleSignInApi.login();
    print(user);
  }
}
