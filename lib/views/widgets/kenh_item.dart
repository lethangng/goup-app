import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../utils/color_app.dart';
import '../../view_models/tab_view_models/home_tabs/exam_tab_view_model.dart';
import 'exam_container_item.dart';

class KenhItem extends StatefulWidget {
  const KenhItem({super.key});

  @override
  State<KenhItem> createState() => _KenhItemState();
}

class _KenhItemState extends State<KenhItem> {
  bool show = false;
  final ExamTabViewModel examTabViewModel = Get.find<ExamTabViewModel>();

  void handleShow() {
    setState(() {
      show = !show;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF312E2E),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Stack(
                    children: [
                      Image.asset('assets/images/avatar-1.png'),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: SvgPicture.asset(
                            'assets/icons/tick-circle-icon.svg'),
                      )
                    ],
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Job & Banking Test',
                        style: TextStyle(
                          color: ColorApp.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        children: [
                          textRow(title: '3 Huy hiệu', isFirst: true),
                          textRow(title: '4 Linh vật'),
                          textRow(title: '80 đề thi', isLast: true),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: 20,
                height: 20,
                child: IconButton(
                  iconSize: 5,
                  splashRadius: 10,
                  padding: EdgeInsets.zero,
                  onPressed: () => handleShow(),
                  icon: SvgPicture.asset(
                      'assets/icons/${show ? 'arrow-right' : 'arrow-right-icon'}.svg'),
                ),
              ),
            ],
          ),
          AnimatedSize(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            child: SizedBox(
              height: show ? null : 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16),
                  const Text(
                    'Huy hiệu đạt được:',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFFC1C1CD),
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Image.asset('assets/images/huy-hieu-1.png'),
                      const SizedBox(width: 20),
                      Image.asset('assets/images/huy-hieu-2.png'),
                      const SizedBox(width: 20),
                      Image.asset('assets/images/huy-hieu-3.png'),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Đánh giá:',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFFC1C1CD),
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Image.asset('assets/images/set-image.png'),
                      const Text(
                        'Nhận 30 đề xuất trong 7 ngày qua',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Image.asset('assets/images/set-image.png'),
                      const Text(
                        'Nhận 300 lượt yêu thích trong 7 ngày qua',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Đề thi nổi bật:',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFFC1C1CD),
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  const SizedBox(height: 8),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: examTabViewModel.listData
                          .map(
                            (item) => Container(
                              margin: const EdgeInsets.only(right: 12),
                              width: size.width * 0.45,
                              child: ExamContainerItem(
                                showName: false,
                                image: item.image,
                                title: item.title,
                                time: item.time,
                                name: item.name,
                                countHeart: item.countHeart,
                                countEye: item.countEye,
                                countCoin: item.countCoin,
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: size.width * 0.4,
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            foregroundColor: ColorApp.colorOrange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                            side: const BorderSide(
                              width: 1,
                              color: ColorApp.colorOrange,
                            ),
                          ),
                          child: const Text('Xem Kênh'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget textRow({required String title, bool? isLast, bool? isFirst}) {
    return Row(
      children: [
        Text(
          (isFirst != null && isFirst) ? '$title ' : ' $title ',
          style: const TextStyle(
            fontSize: 12,
            color: Color(0xFFC1C1CD),
          ),
        ),
        (isLast != null && isLast)
            ? const SizedBox()
            : SvgPicture.asset('assets/icons/dot-icon.svg'),
      ],
    );
  }
}
