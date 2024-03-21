import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../app/routes.dart';
import '../../utils/color_app.dart';
import '../../view_models/exam/create_exam_view_model.dart';
import '../widgets/exam/message_container.dart';

class CreateExamScreen extends StatelessWidget {
  CreateExamScreen({super.key});

  final CreateExamViewModel createExamViewModel =
      Get.put(CreateExamViewModel());
  final TextEditingController createEditController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final heightStatusBar = MediaQuery.of(context).viewPadding.top;
    return Scaffold(
      backgroundColor: ColorApp.colorBlack4,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          height: size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color(0xFFFF9055).withOpacity(0.15),
                const Color(0xFF000000).withOpacity(0),
                const Color(0xFF3371DB).withOpacity(0.15),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: heightStatusBar,
                    width: double.infinity,
                  ),
                  Stack(
                    children: [
                      const SizedBox(
                        width: double.infinity,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            SvgPicture.asset('assets/icons/logo-icon-2.svg'),
                            const Text(
                              'GoupeeAI',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon:
                                SvgPicture.asset('assets/icons/arrow-back.svg'),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            margin: const EdgeInsets.only(right: 16),
                            child: ElevatedButton(
                              onPressed: () => Get.toNamed(Routes.viewExam),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFFF6E47),
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                minimumSize: Size.zero,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 6,
                                ),
                              ).copyWith(
                                elevation: ButtonStyleButton.allOrNull(0.0),
                              ),
                              child: const Text(
                                'Tiếp theo',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 45),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: createExamViewModel.listData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 24),
                      child: MessageContainer(
                        messageType:
                            createExamViewModel.listData[index].messageType,
                        image: createExamViewModel.listData[index].image,
                        title: createExamViewModel.listData[index].title,
                        listData: createExamViewModel.listData[index].listData,
                        event: createExamViewModel.listData[index].event,
                      ),
                    );
                  },
                ),
              ),
              // const Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 16),
              //   child: ,
              // ),
              // const SizedBox(height: 15),
              // const MessageResContainer(),
              // const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Visibility(
                    visible: false,
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.all(12),
                      color: const Color(0xFF312E2E),
                      child: Column(
                        children: [
                          rowText(
                            sub: '/taotn',
                            title: 'Tạo đề trắc nghiệm',
                            isFirst: true,
                          ),
                          rowText(sub: '/taotl', title: 'Tạo đề tự luận'),
                          rowText(
                            sub: '/taodgtd',
                            title: 'Tạo đề đánh giá tư duy',
                            isLast: true,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Obx(
                    () => Visibility(
                      visible: createExamViewModel.showCreateButton.value,
                      child: Container(
                        margin: const EdgeInsets.only(left: 23),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            backgroundColor: const Color(0xFF312E2E),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: const EdgeInsets.all(8),
                            foregroundColor: const Color(0xFFE4E4E4),
                          ),
                          child: Text(
                            'Tự thêm đề thi',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              shadows: [
                                BoxShadow(
                                  color:
                                      const Color(0xFF000000).withOpacity(0.15),
                                  spreadRadius: 0,
                                  blurRadius: 0,
                                  offset: const Offset(0, 0),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton(
                          onPressed: () =>
                              createExamViewModel.handleShowCreateButton(),
                          style: TextButton.styleFrom(
                            backgroundColor: const Color(0xFF312E2E),
                            shape: const CircleBorder(),
                            padding: EdgeInsets.zero,
                            // minimumSize: Size.zero,
                          ),
                          child: SvgPicture.asset('assets/icons/dot.svg'),
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            height: size.height * 0.15,
                            decoration: BoxDecoration(
                              color: const Color(0xFF312E2E),
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: const Color(0xFF636363),
                                width: 1,
                              ),
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: TextField(
                                          controller: createEditController,
                                          onChanged: (value) =>
                                              createExamViewModel
                                                  .handleCountText(value),
                                          style: const TextStyle(
                                              color: Colors.white),
                                          decoration: const InputDecoration(
                                            isDense:
                                                true, // Cho chu can giua theo chieu doc
                                            hintText: 'Nhập câu lệnh tại đây',
                                            hintStyle: TextStyle(
                                              color: ColorApp.colorGrey2,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                            ),
                                            border: InputBorder.none,
                                            contentPadding: EdgeInsets.zero,
                                          ),
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () {},
                                        style: IconButton.styleFrom(
                                          padding: const EdgeInsets.all(5),
                                          minimumSize: Size.zero,
                                          tapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                        ),
                                        child: SvgPicture.asset(
                                            'assets/icons/mic.svg'),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Obx(
                                      () => Text(
                                        '${createExamViewModel.countText.value}/200',
                                        style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFFA2A2B5),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 3),
                                    IconButton(
                                      onPressed: () {},
                                      style: IconButton.styleFrom(
                                        padding: const EdgeInsets.all(5),
                                        minimumSize: Size.zero,
                                        tapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                      ),
                                      icon: SvgPicture.asset(
                                          'assets/icons/send.svg'),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 11),
                      ],
                    ),
                  ),
                ],
              ),
              // const SizedBox(height: 18),
            ],
          ),
        ),
      ),
    );
  }

  Widget selectChip({required Size size}) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          child: SizedBox(
            width: size.width * 0.7,
            child: const Text(
              'Hãy cho chúng tôi biết mong muốn của bạn hoặc chọn một đề xuất',
              style: TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        const SizedBox(height: 25),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Wrap(
            spacing: 15,
            runSpacing: 5,
            children: [
              chip(title: 'Tạo 1 đề toán thi THPT Quốc gia'),
              chip(title: 'Tạo 1 đề hóa 12'),
              chip(title: 'Tạo 1 đề thi công chức thuế 50 câu'),
              chip(
                title:
                    'Tạo 1 đề cương 99 câu  hỏi thi kiểm soát nội bộ tín dụng',
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget rowText({
    required String sub,
    required String title,
    bool? isFirst,
    bool? isLast,
  }) {
    return Container(
      padding: const EdgeInsets.only(
        bottom: 12,
        top: 12,
      ),
      decoration: BoxDecoration(
        border: BorderDirectional(
          bottom: BorderSide(
            color: const Color(0xFF353542),
            width: isFirst != null ? 1 : 0,
          ),
          top: BorderSide(
            color: const Color(0xFF353542),
            width: isLast != null ? 1 : 0,
          ),
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            // width: size.width * 0.2,
            width: 100,
            child: Text(
              sub,
              style: const TextStyle(color: Colors.white),
            ),
          ),
          Text(
            title,
            style: const TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }

  Widget chip({required String title}) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        backgroundColor: const Color(0xFF312E2E),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(8),
        foregroundColor: const Color(0xFFE4E4E4),
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
