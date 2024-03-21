import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HashtagTab extends StatelessWidget {
  const HashtagTab({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: 15,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: rowContainer(
            index: index + 1,
            title: 'Thi ngân hàng',
            number: '157,6K',
            isFirst: index == 0,
            size: size.width,
          ),
        );
      },
    );
  }

  Widget rowContainer({
    required int index,
    required String title,
    required bool isFirst,
    required String number,
    required double size,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SizedBox(
              width: size * 0.1,
              child: Text(
                index.toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            const SizedBox(
              width: 4,
            ),
            SvgPicture.asset(
                'assets/icons/${isFirst ? 'lighting.svg' : 'fire.svg'}'),
          ],
        ),
        Text(
          number,
          style: const TextStyle(
            color: Color(0xFFC1C1CD),
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
