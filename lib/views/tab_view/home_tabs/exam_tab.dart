import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../view_models/tab_view_models/home_tabs/exam_tab_view_model.dart';
import '../../widgets/exam_container_item.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Examtab extends StatelessWidget {
  Examtab({super.key});
  final ExamTabViewModel examTabViewModel = Get.put(ExamTabViewModel());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MasonryGridView.count(
      padding: EdgeInsets.only(
        top: 16,
        bottom: size.height * 0.1,
        left: 16,
        right: 16,
      ),
      crossAxisCount: 2,
      crossAxisSpacing: 12,
      mainAxisSpacing: 16,
      itemCount: examTabViewModel.listData.length,
      itemBuilder: (context, index) {
        return ExamContainerItem(
          showName: true,
          image: examTabViewModel.listData[index].image,
          title: examTabViewModel.listData[index].title,
          time: examTabViewModel.listData[index].time,
          name: examTabViewModel.listData[index].name,
          countHeart: examTabViewModel.listData[index].countHeart,
          countEye: examTabViewModel.listData[index].countEye,
          countCoin: examTabViewModel.listData[index].countCoin,
        );
      },
    );
  }
}
