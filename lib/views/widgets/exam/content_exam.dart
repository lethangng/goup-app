// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ContentExam extends StatelessWidget {
  const ContentExam({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        const SizedBox(height: 24),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: const Color(0xFF636363),
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFF4E4E61),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'Đề bài',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SvgPicture.asset('assets/icons/edit.svg')
                ],
              ),
              const SizedBox(height: 12),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              button2(
                title: 'A. ',
                value: 'HCO3Na + CH3OH',
                color: const Color(0xFFF0EBF5),
              ),
              button2(
                title: 'B. ',
                value: 'HCO3Na + CH3OH',
                color: const Color(0xFFF0EBF5),
              ),
              button2(
                title: 'C. ',
                value: 'HCO3Na + CH3OH',
                color: Colors.white,
              ),
              button2(
                title: 'D. ',
                value: 'HCO3Na + CH3OH',
                color: Colors.white,
              ),
            ],
          ),
        ),
        const SizedBox(height: 32),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  Get.defaultDialog(
                    title: 'Dùng đáp án mẫu',
                    titleStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                    contentPadding: const EdgeInsets.all(20),
                    titlePadding: const EdgeInsets.only(top: 20),
                    backgroundColor: const Color(0xFF202025),
                    radius: 20,
                    content: SizedBox(
                      width: size.width * 0.9,
                      child: Column(
                        children: [
                          button(
                            title: 'Giới thiệu bạn bè',
                            color: const Color(0xFFFF6E47),
                            icon: 'assets/icons/gioi-thieu.svg',
                            event: () {},
                          ),
                          const SizedBox(height: 15),
                          button(
                            title: 'Xem video',
                            color: const Color(0xFFFF6E47),
                            icon: 'assets/icons/video.svg',
                            event: () {},
                          ),
                          const SizedBox(height: 15),
                          button(
                            title: 'Dùng 1G',
                            color: const Color(0xFF312E2E),
                            icon: 'assets/icons/coin-icon.png',
                            event: () {},
                            typeImageSvg: false,
                          ),
                        ],
                      ),
                    ),
                  );
                },
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xFF312E2E),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/icons/dung-mau.svg'),
                    const SizedBox(width: 8),
                    const Text(
                      'Dùng đáp án mẫu',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: TextButton(
                onPressed: () {
                  Get.dialog(
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color(0xFF202025),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                                bottom: 10,
                              ),
                              child: Material(
                                color: Colors.transparent,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // const SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: SvgPicture.asset(
                                            'assets/icons/close.svg',
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Text(
                                      'Bộ đề gồm:',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      // textAlign: TextAlign.center,
                                    ),
                                    const SizedBox(height: 15),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xFFFF6E47),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/icons/edit-2.svg'),
                    const SizedBox(width: 8),
                    const Text(
                      'Tự viết đáp án',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.all(12),
          width: size.width * 0.9,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: const Color(0xFFFF9055),
            ),
            borderRadius: BorderRadius.circular(12),
            color: const Color(0xFF3d3635),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFFFFFFFF),
                      Color(0xFFFFCAAD),
                      Color(0xFFFF7955),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  'Chọn đáp án đúng',
                  style: TextStyle(
                    color: Color(0xFF0E0E12),
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  button3(
                    title: 'A',
                    color: Colors.white,
                  ),
                  button3(
                    title: 'B',
                    color: Colors.white,
                  ),
                  button3(
                    title: 'C',
                    color: Colors.white,
                  ),
                  button3(
                    title: 'D',
                    color: Colors.white,
                    backgroundColor: const Color(0xFF3EC65C),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        Container(
          height: size.height * 0.3,
          width: size.width * 0.9,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: const Color(0xFFFF9055),
            ),
            borderRadius: BorderRadius.circular(12),
            color: const Color(0xFF3d3635),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFFFFFFFF),
                      Color(0xFFFFCAAD),
                      Color(0xFFFF7955),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  'Giải thích đáp án',
                  style: TextStyle(
                    color: Color(0xFF0E0E12),
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget button3({
    required String title,
    required Color color,
    Color? backgroundColor,
  }) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        foregroundColor: color,
        backgroundColor: backgroundColor,
        shape: const CircleBorder(),
        side: BorderSide(
          color: backgroundColor ?? color,
          width: 1.5,
        ),
        // padding: EdgeInsets.zero,
        // minimumSize: Size.zero,
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget button2({
    required String title,
    required String value,
    required Color color,
  }) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        foregroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        side: BorderSide(
          color: color,
          width: 1.5,
        ),
        padding: const EdgeInsets.only(left: 16),
      ),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Color(0xFFF1E5FF),
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            value,
            style: const TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }

  Widget button({
    required String title,
    required Color color,
    required String icon,
    required event,
    bool? typeImageSvg,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: color,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                (typeImageSvg == null || typeImageSvg)
                    ? SvgPicture.asset(icon)
                    : Image.asset(icon),
                const SizedBox(width: 8),
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
