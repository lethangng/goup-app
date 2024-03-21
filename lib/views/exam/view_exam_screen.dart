import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../utils/color_app.dart';
import '../../view_models/exam/view_exam_view_model.dart';
import '../widgets/exam/content_exam.dart';

class ViewExamScreen extends StatelessWidget {
  ViewExamScreen({super.key});

  final ViewExamViewModel viewExamViewModel = Get.put(ViewExamViewModel());

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    final heightStatusBar = MediaQuery.of(context).viewPadding.top;
    final appBarHeight = AppBar().preferredSize.height;
    return Scaffold(
      backgroundColor: ColorApp.colorBlack4,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        child: Container(
          // padding: const EdgeInsets.symmetric(horizontal: 16),
          // height: size.height,
          decoration: const BoxDecoration(
              // gradient: LinearGradient(
              //   colors: [
              //     const Color(0xFFFF9055).withOpacity(0.15),
              //     const Color(0xFF000000).withOpacity(0),
              //     const Color(0xFF3371DB).withOpacity(0.15),
              //   ],
              //   begin: Alignment.topLeft,
              //   end: Alignment.bottomRight,
              // ),
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
                      SizedBox(
                        height: appBarHeight,
                        width: double.infinity,
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: IconButton(
                            onPressed: () => Get.back(),
                            icon:
                                SvgPicture.asset('assets/icons/arrow-back.svg'),
                          ),
                        ),
                      ),
                      const Positioned.fill(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Xem trước đề thi',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            margin: const EdgeInsets.only(right: 16),
                            child: ElevatedButton(
                              onPressed: () {},
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
              Container(
                color: const Color(0xFF353542),
                height: 1,
              ),
              const SizedBox(height: 12),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          children: viewExamViewModel.listData
                              .map(
                                (item) => Obx(
                                  () => GestureDetector(
                                    onTap: () => viewExamViewModel
                                        .hanleOnSelect(item['index']),
                                    child: Container(
                                      width: 40,
                                      margin: const EdgeInsets.only(right: 16),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          width: 2,
                                          color: (viewExamViewModel
                                                      .isSelect.value ==
                                                  item['index'])
                                              ? Colors.white
                                              : const Color(0xFF83839C),
                                        ),
                                      ),
                                      child: Text(
                                        '${item['index']}',
                                        style: TextStyle(
                                          color: (viewExamViewModel
                                                      .isSelect.value ==
                                                  item['index'])
                                              ? Colors.white
                                              : const Color(0xFF83839C),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                              .toList()),
                    ),
                    Column(
                      children: viewExamViewModel.listData
                          .map(
                            (item) => Obx(
                              () => Visibility(
                                visible: item['index'] ==
                                    viewExamViewModel.isSelect.value,
                                child: ContentExam(
                                  title: item['title'],
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
