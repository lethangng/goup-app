import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../utils/color_app.dart';
import '../../view_models/exam/search_view_view_model.dart';
import '../widgets/exam/container_result.dart';

class SearchResultView extends StatelessWidget {
  SearchResultView({super.key});

  final SearchViewViewModel searchViewViewModel =
      Get.find<SearchViewViewModel>();

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorApp.colorBlack4,
      appBar: AppBar(
        elevation: 0,
        titleSpacing: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          children: [
            Text(
              searchViewViewModel.textSearchController.text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () => searchViewViewModel.handleDelete(),
              style: IconButton.styleFrom(
                minimumSize: Size.zero,
                padding: const EdgeInsets.symmetric(
                  horizontal: 5,
                  vertical: 5,
                ),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              icon: Container(
                width: 24,
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  'assets/icons/close-circle.svg',
                ),
              ),
            ),
            IconButton(
              onPressed: () => searchViewViewModel.onSearch(),
              style: IconButton.styleFrom(
                minimumSize: Size.zero,
                padding: const EdgeInsets.symmetric(
                  horizontal: 5,
                  vertical: 5,
                ),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              icon: Container(
                width: 24,
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  'assets/icons/search-icon.svg',
                ),
              ),
            ),
            const SizedBox(width: 16),
          ],
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.white,
          onPressed: () => Get.back(),
        ),
      ),
      body: searchResult(listData: ['1', '2', '3', '4', '5']),
    );
  }

  Widget searchResult({required List listData}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 1,
            color: const Color(0xFF888888),
          ),
          const SizedBox(height: 20),
          Text(
            '${listData.length} kết quả',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: ListView.builder(
              itemCount: listData.length,
              itemBuilder: (BuildContext context, int index) {
                return const Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: ContainerResult(
                    image: 'assets/images/cart-search-result.png',
                    name: 'Đề thi chuyên viên nhân sự VCB',
                    time: '56 phút trước',
                    countHeart: 60,
                    countEye: 20,
                    countCoin: 60,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
