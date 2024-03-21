import 'package:get/get.dart';

import '../../../views/widgets/linh_vat_item.dart';

class LinhVatTabViewModel extends GetxController {
  RxList<LinhVatItem> listData = <LinhVatItem>[
    const LinhVatItem(
      image: 'assets/images/linh-vat.svg',
      countHeart: '67,2K',
      countCoin: '5.6K',
      lever: '5',
      id: 'G156VCB',
      countExam: '52',
    ),
    const LinhVatItem(
      image: 'assets/images/linh-vat-2.svg',
      countHeart: '67,2K',
      countCoin: '5.6K',
      lever: '5',
      id: 'G156VCB',
      countExam: '52',
    ),
  ].obs;
}
