import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class GioiThieuTab extends StatelessWidget {
  const GioiThieuTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const Text(
            'Xin chào, mình là jb. Mình mong muốn các bạn khi tới với kênh của mình sẽ cảm thấy có ích cho công việc ngân hàng của các bạn. Dựa vào kinh nghiệm và trải nghiệm của mình, sẽ cố gắng hết sức để giúp các bạn, hy vọng nó sẽ có ích!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/teacher.png'),
              const SizedBox(width: 6),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Tác giả: Nguyễn Tùng Lâm',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: Get.width * 0.7,
                    child: const Text(
                      'Thạc sỹ Văn học đã có trên 10 năm kinh nghiệm giảng dạy',
                      style: TextStyle(
                        color: Color(0xFFE0E0E6),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      SvgPicture.asset('assets/icons/huy-hieu-1.svg'),
                      const SizedBox(width: 4),
                      const Text(
                        'Sáng kiến kinh nghiệm đạt loại B TP Hà Nội',
                        style: TextStyle(
                          color: Color(0xFFE0E0E6),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      SvgPicture.asset('assets/icons/huy-hieu-1.svg'),
                      const SizedBox(width: 4),
                      const Text(
                        'Sáng kiến kinh nghiệm đạt loại B TP Hà Nội',
                        style: TextStyle(
                          color: Color(0xFFE0E0E6),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
