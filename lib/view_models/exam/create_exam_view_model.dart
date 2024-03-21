import 'package:get/get.dart';

import '../../models/home_models/message_model.dart';

class CreateExamViewModel extends GetxController {
  final RxBool showCreateButton = false.obs;
  final RxInt countText = 0.obs;

  final List<MessageModel> listData = [
    MessageModel(
      messageType: 'user',
      image: 'assets/images/avatar-3.png',
      title: 'Tạo 1 đề thi tự luận môn Hóa THPT Quốc gia',
      listData: [],
      event: () {},
    ),
    MessageModel(
      messageType: 'res',
      image: 'assets/icons/message-avatar.svg',
      title: 'ĐỀ THI TỰ LUẬN MÔN HÓA HỌC 12',
      listData: [
        '''Câu 1. (2 điểm)
Viết các phương trình hóa học xảy ra trong sơ đồ sau:
C2H4O2 → CH3COOH → CH3COONa → CH3COOH + NaOH → CH3COONa''',
        '''Câu 2. (2 điểm)
Cho 1,56 gam một kim loại kiềm M tác dụng với nước dư, thu được 3,36 lít khí (đktc). Xác định kim loại M.''',
        '''Câu 3. (2 điểm)
Cho hỗn hợp X gồm 2,4 gam Fe và 0,8 gam Cu tác dụng với dung dịch HNO3 loãng dư, thu được dung dịch Y và khí NO. Cho dung dịch Y tác dụng với dung dịch NaOH dư, thu được kết tủa Z.
a. Viết các phương trình hóa học xảy ra. b. Tính khối lượng của kết tủa Z.'''
      ],
      event: () {},
    ),
  ];

  void handleShowCreateButton() {
    showCreateButton.value = !showCreateButton.value;
  }

  void handleCountText(String value) {
    countText.value = value.length;
  }
}
