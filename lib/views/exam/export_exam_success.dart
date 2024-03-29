import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../app/routes.dart';
import '../../utils/color_app.dart';

class ExportExamSusscess extends StatelessWidget {
  const ExportExamSusscess({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = MediaQuery.of(context).viewPadding.top;
    return Scaffold(
      backgroundColor: ColorApp.colorBlack4,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: height + 44),
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomCenter,
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/images/exam.png',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/images/exam-2.png',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              Positioned(
                bottom: -10,
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.bottomCenter,
                  children: [
                    Positioned(
                      bottom: -5,
                      child: SvgPicture.asset('assets/icons/shadow.svg'),
                    ),
                    Image.asset(
                      'assets/images/success-linhvat.png',
                      // width: double.infinity,
                      // fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 25),
          const Text(
            'Đề được xuất thành công',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
          Container(
            alignment: Alignment.center,
            width: size.width * 0.8,
            child: const Text(
              'Đề thi vừa xuất được lưu vào mục đề thi của bạn',
              style: TextStyle(
                color: Color(0xFFbebeca),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const Spacer(),
          SizedBox(
            width: size.width * 0.8,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xFFFF6E47),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              child: const Text(
                'Tạo đề khác',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: size.width * 0.8,
            child: TextButton(
              onPressed: () => Get.toNamed(Routes.home),
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xFF312E2E),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              child: const Text(
                'Về trang chủ',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
