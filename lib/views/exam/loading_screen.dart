import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../utils/color_app.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorApp.colorBlack4,
      body: Column(
        // mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/loading.png'),
          SizedBox(width: size.width),
          const SizedBox(height: 31),
          SizedBox(
            width: 200,
            child: LinearPercentIndicator(
              width: 200,
              lineHeight: 12,
              backgroundColor: Colors.white,
              progressColor: const Color(0xFFFF6E47),
              percent: 0.5,
              barRadius: const Radius.circular(100),
              animation: true,
              animationDuration: 2000,
              padding: EdgeInsets.zero,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Đề của bạn đang được đề xuất.',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          const Text(
            'Bạn iu chờ một chút nhé!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
