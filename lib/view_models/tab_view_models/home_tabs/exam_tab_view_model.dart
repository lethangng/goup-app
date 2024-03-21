import 'package:get/get.dart';

import '../../../models/home_models/exam_controller_item_model.dart';

class ExamTabViewModel extends GetxController {
  RxList<ExamContainerItemModel> listData = <ExamContainerItemModel>[
    ExamContainerItemModel(
      image: 'assets/images/exam_image.png',
      title: 'Đề thi chuyên nhân sự VCB',
      time: '2 giờ trước',
      name: 'Phạm Lan Anh',
      countHeart: 60,
      countEye: 20,
      countCoin: 60,
    ),
    ExamContainerItemModel(
      image: 'assets/images/exam-image-1.png',
      title: 'Đề thi chuyên nhân sự VCB',
      time: '56 phút trước',
      name: 'Phạm Lan Anh',
      countHeart: 60,
      countEye: 20,
      countCoin: 60,
    ),
    ExamContainerItemModel(
      image: 'assets/images/exam-image-2.png',
      title: 'Đề thi chuyên nhân sự VCB',
      time: '56 phút trước',
      name: 'Phạm Lan Anh',
      countHeart: 60,
      countEye: 20,
      countCoin: 60,
    ),
    ExamContainerItemModel(
      image: 'assets/images/exam-image-3.png',
      title: 'Đề thi chuyên nhân sự VCB',
      time: '56 phút trước',
      name: 'Phạm Lan Anh',
      countHeart: 60,
      countEye: 20,
      countCoin: 60,
    ),
  ].obs;
}
