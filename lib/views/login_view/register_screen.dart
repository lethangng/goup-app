import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
// import 'package:get/get_state_manager/get_state_manager.dart';
// import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../app/routes.dart';
import '../../utils/color_app.dart';
import '../../view_models/login_view_models/register_view_model.dart';
import '../widgets/text_input_container.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  final RegisterViewModel registerViewModel = Get.put(RegisterViewModel());

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final heightStatusBar = MediaQuery.of(context).viewPadding.top;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorApp.colorBlack2,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: heightStatusBar + size.height * 0.1,
              ),
              const Text(
                'Đăng ký tài khoản',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: size.height * 0.015,
              ),
              const Text(
                'Chào mừng bạn đến với GoupeeAI',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: ColorApp.colorGrey,
                ),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Obx(
                () => TextInputContainer(
                  controller: nameController,
                  label: 'Họ và tên học sinh',
                  textHint: 'Nhập họ và tên',
                  requiredValue: false,
                  error: registerViewModel.formError.value.name.isNotEmpty,
                  errorText: registerViewModel.formError.value.name,
                  event: () {},
                ),
              ),
              SizedBox(
                height: size.height * 0.025,
              ),
              Obx(
                () => TextInputContainer(
                  controller: emailController,
                  label: 'Nhập số điện thoại/Email',
                  textHint: 'Nhập sdt hoặc email',
                  requiredValue: true,
                  error: registerViewModel.formError.value.email.isNotEmpty,
                  errorText: registerViewModel.formError.value.email,
                  textButton: 'Nhập mã OTP',
                  event: () {},
                ),
              ),
              SizedBox(
                height: size.height * 0.025,
              ),
              Obx(
                () => TextInputContainer(
                  controller: otpController,
                  label: 'Mã OTP',
                  textHint: 'Nhập mã OTP',
                  requiredValue: true,
                  error: registerViewModel.formError.value.otp.isNotEmpty,
                  errorText: registerViewModel.formError.value.otp,
                  // errorText: 'Mã OTP vừa được gửi đến số điện thoại của bạn',
                  event: () {},
                ),
              ),
              SizedBox(
                height: size.height * 0.025,
              ),
              Obx(
                () => TextInputContainer(
                  controller: passwordController,
                  label: 'Mật khẩu',
                  textHint: 'Nhập mật khẩu',
                  requiredValue: true,
                  error: registerViewModel.formError.value.password.isNotEmpty,
                  errorText: registerViewModel.formError.value.password,
                  isPassword: !registerViewModel.showPassword.value,
                  event: registerViewModel.handleShowPassword,
                  icon: SvgPicture.asset(
                    registerViewModel.showPassword.value
                        ? 'assets/icons/eye_fill_icon.svg'
                        : 'assets/icons/eye_slash_fill_icon.svg',
                    width: size.width * 0.06,
                    fit: BoxFit.cover,
                    colorFilter: const ColorFilter.mode(
                      ColorApp.colorGrey5,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.025,
              ),
              Obx(
                () => TextInputContainer(
                  controller: confirmPasswordController,
                  label: 'Nhập lại mật khẩu',
                  textHint: 'Nhập mật khẩu',
                  requiredValue: true,
                  error: registerViewModel
                      .formError.value.confirmPassword.isNotEmpty,
                  errorText: registerViewModel.formError.value.confirmPassword,
                  isPassword: !registerViewModel.showConfirmPassword.value,
                  event: registerViewModel.handleShowConfirmPassword,
                  icon: SvgPicture.asset(
                    registerViewModel.showConfirmPassword.value
                        ? 'assets/icons/eye_fill_icon.svg'
                        : 'assets/icons/eye_slash_fill_icon.svg',
                    width: size.width * 0.06,
                    fit: BoxFit.cover,
                    colorFilter: const ColorFilter.mode(
                      ColorApp.colorGrey5,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Row(
                children: [
                  RichText(
                    text: const TextSpan(
                      text: 'Bằng việc nhấn vào ',
                      style: TextStyle(
                        height: 1.5,
                        // letterSpacing: 2.0,
                        color: Colors.white,
                      ),
                      children: [
                        TextSpan(
                          text: 'Đăng ký',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: ', bạn đã đồng ý với',
                        ),
                        TextSpan(
                          text: '\nĐiều khoản sử dụng',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF3098FF),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: ColorApp.colorOrange,
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                child: TextButton(
                  onPressed: () {
                    registerViewModel.validate(
                      nameController.text,
                      emailController.text,
                      otpController.text,
                      passwordController.text,
                      confirmPasswordController.text,
                    );
                  },
                  child: const Text(
                    'Đăng ký',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Bạn đã có tài khoản? ',
                    style: TextStyle(color: Colors.white),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.toNamed(Routes.signup);
                    },
                    style: TextButton.styleFrom(padding: EdgeInsets.zero),
                    child: const Text(
                      'Đăng nhập',
                      style: TextStyle(
                        color: ColorApp.colorOrange,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
