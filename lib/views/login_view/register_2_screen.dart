import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../utils/color_app.dart';
import '../../view_models/login_view_models/register2_view_model.dart';

class Resgiter2Screen extends StatelessWidget {
  Resgiter2Screen({super.key});
  final Register2ViewModel register2viewModel = Get.put(Register2ViewModel());

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
              SizedBox(
                height: size.height * 0.04,
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
              const SizedBox(height: 34),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Bạn là thành viên mới?',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      ' Tạo tài khoản',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFFF6E47),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 34),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 1,
                      color: const Color(0xFFC1C1CD),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      'Hoặc đăng ký bằng',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFE0E0E6),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 1,
                      color: const Color(0xFFC1C1CD),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 34),
              button(
                title: 'Sign in with Facebook',
                icon: 'assets/icons/google.svg',
                backgroundColor: Colors.white,
                forColor: const Color(0xFF757575),
                event: () => register2viewModel.signIn(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget button({
    required String title,
    required String icon,
    required Color backgroundColor,
    required Color forColor,
    required void Function()? event,
  }) {
    return FilledButton(
      onPressed: event,
      style: FilledButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        padding: const EdgeInsets.symmetric(vertical: 12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(icon),
          const SizedBox(width: 10),
          Text(
            title,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: forColor,
            ),
          )
        ],
      ),
    );
  }
}
