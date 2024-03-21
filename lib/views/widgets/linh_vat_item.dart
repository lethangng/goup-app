// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LinhVatItem extends StatelessWidget {
  const LinhVatItem({
    super.key,
    required this.image,
    required this.countHeart,
    required this.countCoin,
    required this.lever,
    required this.id,
    required this.countExam,
  });

  final String image;
  final String countHeart;
  final String countCoin;
  final String lever;
  final String id;
  final String countExam;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xFF2b2d34),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: SvgPicture.asset('assets/icons/1.svg'),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: SvgPicture.asset('assets/icons/2.svg'),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: SvgPicture.asset(
                      image,
                      width: size.width * 0.8,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ID: $id',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        children: [
                          SvgPicture.asset('assets/icons/dot-icon.svg'),
                          Text(
                            ' $countExam Đề thi',
                            style: const TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              top: 36,
              right: 36,
              child: Image.asset('assets/icons/lv5.png'),
            ),
            Positioned(
              top: 122,
              left: 31,
              child: Column(
                children: [
                  SvgPicture.asset('assets/icons/heart-icon-2.svg'),
                  Text(
                    countHeart,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 192,
              left: 31,
              child: Column(
                children: [
                  Image.asset('assets/icons/coin-icon-2.png'),
                  Text(
                    countCoin,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
