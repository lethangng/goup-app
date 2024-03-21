import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/color_app.dart';

class ScreenContainer extends StatelessWidget {
  const ScreenContainer({super.key, required this.title, required this.widget});

  final String title;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    final appBarHeight = AppBar().preferredSize.height;
    return Scaffold(
      backgroundColor: ColorApp.colorBlack4,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          title,
          style: const TextStyle(
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
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Container(
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
            children: [
              SizedBox(
                height: appBarHeight,
              ),
              widget
            ],
          ),
        ),
      ),
    );
  }
}
