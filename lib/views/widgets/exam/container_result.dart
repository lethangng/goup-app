// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContainerResult extends StatelessWidget {
  const ContainerResult({
    super.key,
    required this.image,
    required this.name,
    required this.time,
    required this.countHeart,
    required this.countEye,
    required this.countCoin,
  });

  final String image;
  final String name;
  final String time;
  final int countHeart;
  final int countEye;
  final int countCoin;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xFF312E2E),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(image),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    SvgPicture.asset('assets/icons/clock-icon.svg'),
                    const SizedBox(width: 8),
                    Text(
                      time,
                      style: const TextStyle(
                        color: Color(0xFFC1C1CD),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 8),
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
          )
        ],
      ),
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
