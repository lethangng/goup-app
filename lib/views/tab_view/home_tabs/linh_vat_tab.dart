import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../view_models/tab_view_models/home_tabs/linh_vat_tab_view_model.dart';
import '../../widgets/linh_vat_item.dart';

class LinhVatTab extends StatelessWidget {
  LinhVatTab({super.key});
  final LinhVatTabViewModel linhVatTabViewModel =
      Get.put(LinhVatTabViewModel());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Visibility(
          visible: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 23,
              vertical: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Linh vật thuộc sở hữu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF201E1F),
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xFFFF9055).withOpacity(0.15),
                        const Color(0xFF000000).withOpacity(0),
                        const Color(0xFF3371DB).withOpacity(0.15),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: TextButton(
                    onPressed: () {
                      //
                    },
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 8,
                      ),
                      minimumSize: Size.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: Row(
                      children: [
                        const Text(
                          'Thêm mới',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, color: Colors.white),
                        ),
                        SvgPicture.asset('assets/icons/add.svg'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 70,
            ),
            itemCount: linhVatTabViewModel.listData.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: LinhVatItem(
                  image: linhVatTabViewModel.listData[index].image,
                  countHeart: linhVatTabViewModel.listData[index].countHeart,
                  countCoin: linhVatTabViewModel.listData[index].countCoin,
                  lever: linhVatTabViewModel.listData[index].lever,
                  id: linhVatTabViewModel.listData[index].id,
                  countExam: linhVatTabViewModel.listData[index].countExam,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
