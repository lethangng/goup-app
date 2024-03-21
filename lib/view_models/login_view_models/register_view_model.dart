import 'package:get/get.dart';

import '../../models/login_models/form_data.dart';
import '../../utils/validate.dart';

class RegisterViewModel extends GetxController {
  final Rx<FormDataError> formError = FormDataError(
    name: '',
    email: '',
    otp: '',
    password: '',
    confirmPassword: '',
  ).obs;
  final RxBool showPassword = false.obs;
  final RxBool showConfirmPassword = false.obs;

  void handleShowPassword() {
    showPassword.value = !showPassword.value;
  }

  void handleShowConfirmPassword() {
    showConfirmPassword.value = !showConfirmPassword.value;
  }

  void validate(
    String name,
    String email,
    String otp,
    String password,
    String confirmPassword,
  ) {
    if (name.isEmpty) {
      formError.value.name = 'Họ và tên không được để trống';
    } else {
      formError.value.name = '';
    }

    if (otp.isEmpty) {
      formError.value.otp = 'Mã OTP không được để trống';
    } else {
      formError.value.otp = '';
    }

    if (email.isEmpty) {
      formError.value.email = 'Tên đăng nhập không được để trống';
    } else if (!email.isEmail) {
      formError.value.email = 'Vui lòng nhập đúng định dạng email';
    } else {
      formError.value.email = '';
    }

    if (password.isEmpty) {
      formError.value.password = 'Mật khẩu không được để trống';
    } else if (!Validate.validatePassword(password)) {
      formError.value.password = 'Vui lòng nhập mật khẩu lớn hơn 6 ký tự';
    } else {
      formError.value.password = '';
    }

    if (confirmPassword.isEmpty) {
      formError.value.confirmPassword = 'Mật khẩu không được để trống';
    } else if (password != confirmPassword) {
      formError.value.confirmPassword = 'Nhập lại mật khẩu không đúng';
    } else {
      formError.value.confirmPassword = '';
    }

    formError.refresh();
    if (formError.value ==
        FormDataError(
          name: '',
          email: '',
          otp: '',
          password: '',
          confirmPassword: '',
        )) {
      //
    }
  }
}
