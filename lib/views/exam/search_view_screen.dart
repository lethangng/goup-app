import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../app/routes.dart';
import '../../utils/color_app.dart';
import '../../view_models/exam/search_view_view_model.dart';

class SearchViewScreen extends StatelessWidget {
  SearchViewScreen({super.key});

  final SearchViewViewModel searchViewViewModel =
      Get.put(SearchViewViewModel());

  // final TextEditingController textSearchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorApp.colorBlack4,
      appBar: AppBar(
        elevation: 0,
        titleSpacing: 0,
        backgroundColor: Colors.transparent,
        title: Container(
          margin: const EdgeInsets.only(right: 16),
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
          decoration: BoxDecoration(
            color: const Color(0xFF312E2E),
            borderRadius: BorderRadius.circular(57),
          ),
          child: TextField(
            controller: searchViewViewModel.textSearchController,
            focusNode: searchViewViewModel.focus,
            cursorColor: ColorApp.colorGrey2,
            style: const TextStyle(color: Colors.white),
            textAlignVertical: TextAlignVertical.center,
            textAlign: TextAlign.left,
            decoration: InputDecoration(
              isDense: true, // Cho chu can giua theo chieu doc
              hintText: 'Tìm kiếm',
              hintStyle: const TextStyle(
                color: ColorApp.colorGrey2,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
              border: InputBorder.none,
              prefixIcon: Container(
                width: 24,
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  'assets/icons/search-icon.svg',
                ),
              ),
            ),
            onSubmitted: (_) => Get.toNamed(Routes.resultSearch),
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.white,
          onPressed: () => Get.back(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 1,
              color: const Color(0xFF353542),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    'Gần đây',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.start,
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      chip(title: 'Đề thi môn toán', event: () {}),
                      chip(title: 'Thi hóa 12', event: () {}),
                      chip(title: 'Lý THPT quốc gia', event: () {}),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Các tìm kiếm phổ biến',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: searchViewViewModel.listData
                        .map((item) => TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                minimumSize: Size.zero,
                                padding: const EdgeInsets.symmetric(
                                  vertical: 10,
                                ),
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              ),
                              child: Text(
                                item,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ))
                        .toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget chip({required String title, required event}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(33),
        color: const Color(0xFFC4C4C4).withOpacity(0.1),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(width: 5),
          IconButton(
            onPressed: event,
            style: IconButton.styleFrom(
              padding: EdgeInsets.zero,
              minimumSize: Size.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            icon: SvgPicture.asset('assets/icons/close-2.svg'),
          ),
        ],
      ),
    );
  }
}
