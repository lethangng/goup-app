import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

import '../../utils/color_app.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final appBarHeight = AppBar().preferredSize.height;
    return Scaffold(
      backgroundColor: ColorApp.colorBlack4,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Kết quả đề thi tín dụng Vietcombank',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.white,
          onPressed: () => Get.back(),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: appBarHeight + 20,
        ),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(20, 255, 144, 85),
              Color.fromARGB(20, 51, 113, 219),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 1,
              color: const Color(0xFF353542),
            ),
            Expanded(
              child: MasonryGridView.count(
                padding: const EdgeInsets.all(16),
                crossAxisCount: 6,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                itemCount: 200,
                itemBuilder: (context, index) {
                  return indexContainer(
                      index: (index + 1).toString(), isTrue: true);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget indexContainer({required String index, required bool isTrue}) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          width: 1,
          color: isTrue ? const Color(0xFF2EE56B) : const Color(0xFFFF3434),
        ),
      ),
      alignment: Alignment.center,
      child: Text(
        index,
        style: TextStyle(
          color: isTrue ? const Color(0xFF2EE56B) : const Color(0xFFFF3434),
          fontSize: 20,
        ),
      ),
    );
  }
}
