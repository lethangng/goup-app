import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ChannelTabViewModel extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;

  final List<Tab> listTap = <Tab>[
    Tab(
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/logo-icon.svg'),
          const SizedBox(width: 5),
          const Text('Linh vật AI'),
        ],
      ),
    ),
    const Tab(text: 'Đề thi'),
    const Tab(text: 'Giới thiệu'),
  ];

  @override
  void onInit() {
    tabController = TabController(
      initialIndex: 0,
      length: listTap.length,
      vsync: this,
    );
    tabController.animateTo(0);
    super.onInit();
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}
