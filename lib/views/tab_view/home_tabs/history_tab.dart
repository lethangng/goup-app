import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../app/routes.dart';
import '../../widgets/history_item.dart';

class HistoryTab extends StatelessWidget {
  const HistoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(20),
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () => Get.toNamed(Routes.examResult),
          child: const Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: HistoryItem(),
          ),
        );
      },
    );
  }
}
