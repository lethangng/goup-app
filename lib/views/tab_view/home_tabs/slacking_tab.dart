import 'package:flutter/material.dart';
import '../../widgets/kenh_item.dart';

class SlackingTab extends StatelessWidget {
  const SlackingTab({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView.builder(
      padding: EdgeInsets.only(
        top: 16,
        left: 16,
        right: 16,
        bottom: size.height * 0.1,
      ),
      itemCount: 2,
      itemBuilder: (BuildContext context, int index) {
        return const KenhItem();
      },
    );
  }
}
