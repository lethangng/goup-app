import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../app/routes.dart';
import '../../utils/color_app.dart';
import '../../view_models/login_view_models/signup_view_model.dart';
import '../widgets/text_input_container.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  final SignUpViewModel signupViewModel = Get.put(SignUpViewModel());

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final heightStatusBar = MediaQuery.of(context).viewPadding.top;
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: ColorApp.colorBlack2,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: heightStatusBar + size.height * 0.05,
              ),
              Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Image.asset(
                        'assets/images/signup_image.png',
                        height: size.height * 0.3,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Bỏ qua',
                        style: TextStyle(
                          // color: ColorApp.colorBlack3,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              const Text(
                'Đăng nhập tài khoản',
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
                'Vui lòng đăng nhập tài khoản của bạn ở đâu',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: ColorApp.colorGrey,
                ),
              ),
              SizedBox(
                height: size.height * 0.035,
              ),
              Obx(
                () => TextInputContainer(
                  controller: emailController,
                  label: 'Nhập số điện thoại/Email',
                  textHint: 'Nhập sdt hoặc email',
                  requiredValue: false,
                  error: signupViewModel.formError.value.email.isNotEmpty,
                  errorText: signupViewModel.formError.value.email,
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
                  textHint: '*****',
                  requiredValue: false,
                  error: signupViewModel.formError.value.password.isNotEmpty,
                  errorText: signupViewModel.formError.value.password,
                  isPassword: !signupViewModel.showPassword.value,
                  event: signupViewModel.handleShowPassword,
                  icon: SvgPicture.asset(
                    signupViewModel.showPassword.value
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
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.forgotPassword);
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: const Text(
                    'Quên mật khẩu?',
                    style: TextStyle(
                      color: ColorApp.colorPrimary,
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: ColorApp.colorOrange,
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                child: TextButton(
                  onPressed: () {
                    signupViewModel.validate(
                      emailController.text,
                      passwordController.text,
                    );
                  },
                  child: const Text(
                    'Đăng nhập',
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
                    'Bạn chưa có tài khoản? ',
                    style: TextStyle(color: Colors.white),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.toNamed(Routes.register);
                    },
                    style: TextButton.styleFrom(padding: EdgeInsets.zero),
                    child: const Text(
                      'Đăng ký',
                      style: TextStyle(
                        color: ColorApp.colorOrange,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
