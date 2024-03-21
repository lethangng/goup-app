import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ViewExamViewModel extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;

  RxInt isSelect = 0.obs;

  void hanleOnSelect(int value) {
    isSelect.value = value;
  }

  List listData = [
    {
      'index': 0,
      'title':
          '''Cho 1,56 gam một kim loại kiềm M tác dụng với nước dư, thu được 3,36 lít khí (đktc). Xác định kim loại M.''',
    },
    {
      'index': 1,
      'title':
          '''Cho 10 gam hỗn hợp X gồm Al, Fe2O3 và CuO tác dụng với dung dịch HCl dư, thu được dung dịch Y và 2,24 lít khí (đktc). Cho dung dịch Y tác dụng với dung dịch NaOH dư, thu được kết tủa Z.''',
    },
    {
      'index': 2,
      'title':
          '''Cho 2,24 gam Mg tác dụng với dung dịch HCl dư, thu được dung dịch A. Cho dung dịch A tác dụng với dung dịch NaOH dư, thu được kết tủa B.''',
    },
    {
      'index': 3,
      'title':
          '''3. Cho 2,24 gam Mg tác dụng với dung dịch HCl dư, thu được dung dịch A. Cho dung dịch A tác dụng với dung dịch NaOH dư, thu được kết tủa B.''',
    },
    {
      'index': 4,
      'title':
          '''4. Cho 2,24 gam Mg tác dụng với dung dịch HCl dư, thu được dung dịch A. Cho dung dịch A tác dụng với dung dịch NaOH dư, thu được kết tủa B.''',
    },
    {
      'index': 5,
      'title':
          '''5. Cho 2,24 gam Mg tác dụng với dung dịch HCl dư, thu được dung dịch A. Cho dung dịch A tác dụng với dung dịch NaOH dư, thu được kết tủa B.''',
    },
    {
      'index': 6,
      'title':
          '''6. Cho 2,24 gam Mg tác dụng với dung dịch HCl dư, thu được dung dịch A. Cho dung dịch A tác dụng với dung dịch NaOH dư, thu được kết tủa B.''',
    },
    {
      'index': 7,
      'title':
          '''7. Cho 2,24 gam Mg tác dụng với dung dịch HCl dư, thu được dung dịch A. Cho dung dịch A tác dụng với dung dịch NaOH dư, thu được kết tủa B.''',
    },
  ];
}
