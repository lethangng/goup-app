import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/color_app.dart';

class ExamContainerItem extends StatelessWidget {
  const ExamContainerItem({
    super.key,
    required this.image,
    required this.title,
    required this.time,
    required this.name,
    required this.countHeart,
    required this.countEye,
    required this.countCoin,
    required this.showName,
  });

  final bool showName;
  final String image;
  final String title;
  final String time;
  final String name;
  final int countHeart;
  final int countEye;
  final int countCoin;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
            height: size.height * 0.3,
            width: double.infinity,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 8),
              rowInfo(
                  icon: 'assets/icons/clock-icon.svg',
                  title: time,
                  typeImage: 'svg'),
              Visibility(
                visible: showName,
                child: rowInfo(
                    icon: 'assets/images/avatar.png',
                    title: name,
                    typeImage: 'image'),
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  infoContainer(
                      icon: 'assets/icons/heart-icon.svg',
                      title: countHeart.toString(),
                      typeImage: 'svg'),
                  infoContainer(
                      icon: 'assets/icons/eye-icon-2.svg',
                      title: countEye.toString(),
                      typeImage: 'svg'),
                  infoContainer(
                    icon: 'assets/icons/coin-icon.png',
                    title: countCoin.toString(),
                    typeImage: 'image',
                    isLast: true,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget rowInfo({
    required String title,
    required String icon,
    required String typeImage,
  }) {
    return Column(
      children: [
        Row(
          children: [
            typeImage == 'svg' ? SvgPicture.asset(icon) : Image.asset(icon),
            const SizedBox(width: 8),
            Text(
              title,
              style: const TextStyle(
                color: ColorApp.colorGrey,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8)
      ],
    );
  }

  Widget infoContainer({
    required String title,
    required String icon,
    bool? isLast,
    required String typeImage,
  }) {
    return Row(
      children: [
        typeImage == 'svg' ? SvgPicture.asset(icon) : Image.asset(icon),
        const SizedBox(width: 4),
        Text(
          title,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.white,
          ),
        ),
        SizedBox(width: (isLast != null && isLast) ? 0 : 12),
      ],
    );
  }
}
