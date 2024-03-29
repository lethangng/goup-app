import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchViewViewModel extends GetxController {
  List<String> listData = [
    'Trend',
    'Ôn thi THPT Quốc gia',
    'Luyện thi công chức',
    'Thi phỏng vấn Ngân Hàng',
    'Beauty',
    'Accessories',
  ];

  final TextEditingController textSearchController = TextEditingController();
  FocusNode focus = FocusNode();

  @override
  void onClose() {
    super.onClose();
    textSearchController.dispose();
    focus.dispose();
  }

  void handleDelete() {
    textSearchController.text = '';
    focus.requestFocus();
    Get.back();
  }

  void onSearch() {
    focus.requestFocus();
    Get.back();
  }
}
