import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../app/routes.dart';
import '../widgets/screen_container.dart';

class ExamResultScreen extends StatelessWidget {
  const ExamResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final appBarHeight = AppBar().preferredSize.height;
    return ScreenContainer(
      title: 'Kết quả bài thi',
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: appBarHeight,
          ),
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset(
                'assets/images/exam.png',
                width: size.width,
              ),
              Column(
                children: [
                  const SizedBox(height: 46),
                  SvgPicture.asset('assets/images/success.svg'),
                ],
              ),
            ],
          ),
          const SizedBox(height: 38),
          const Text(
            'Chúc mừng bạn đã hoàn thành đề thi',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xFF2EE56B),
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Đây là kết quả bài kiểm tra của bạn.',
            style: TextStyle(
              color: Color(0xFFE0E0E6),
            ),
          ),
          const Text(
            'Bạn thật xuất sắc!',
            style: TextStyle(
              color: Color(0xFFE0E0E6),
            ),
          ),
          const SizedBox(height: 8),
          RichText(
            text: const TextSpan(
              text: '60',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xFF2EE56B),
              ),
              children: [
                TextSpan(text: '/', style: TextStyle(color: Colors.white)),
                TextSpan(text: '60', style: TextStyle(color: Colors.white))
              ],
            ),
          ),
          const SizedBox(height: 20),
          rowInfo(
            title: 'Tổng số câu hỏi:',
            value: '60 câu',
            widthSize: size.width * 0.8,
          ),
          rowInfo(
            title: 'Số câu trả lời đúng:',
            value: '60 câu',
            widthSize: size.width * 0.8,
            isTrue: true,
          ),
          rowInfo(
            title: 'Thời gian bạn làm bài:',
            value: '45p 30s',
            widthSize: size.width * 0.8,
          ),
          const SizedBox(height: 44),
          button(
            title: 'Kết quả chi tiết',
            event: () => Get.toNamed(Routes.result),
            isResult: true,
            size: size.width * 0.78,
          ),
          button(
            title: 'Về trang chủ',
            event: () => Get.toNamed(Routes.home),
            isResult: false,
            size: size.width * 0.78,
          ),
          const SizedBox(height: 31),
        ],
      ),
    );
  }

  Widget button({
    required String title,
    required bool isResult,
    required event,
    required double size,
  }) {
    return TextButton(
      onPressed: event,
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
      ),
      child: Container(
          width: size,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: isResult ? const Color(0xFFFF6E47) : const Color(0xFF312E2E),
          ),
          alignment: Alignment.center,
          child: Text(title)),
    );
  }

  Widget rowInfo({
    required String title,
    required String value,
    required double widthSize,
    bool? isTrue,
  }) {
    return Container(
      width: widthSize,
      margin: const EdgeInsets.only(bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
          Text(
            value,
            style: TextStyle(
              color: (isTrue != null && isTrue)
                  ? const Color(0xFF2EE56B)
                  : Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
