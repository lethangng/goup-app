import 'package:get/get.dart';

class InputInfoExamViewModel extends GetxController {
  final List<String> listData = [
    'Goupee #01',
    'Goupee #02',
    'Goupee #03',
    'Goupee #04',
    // 'Goupee #04',
    // 'Goupee #04',
    // 'Goupee #04',
    // 'Goupee #04',
    // 'Goupee #04',
  ];
  final List<String> listDataExam = [
    'Công khai',
    'Không công khai',
  ];

  late RxString dropdownValue;
  late RxString dropdownValueExam;

  @override
  void onInit() {
    super.onInit();
    dropdownValue = listData.first.obs;
    dropdownValueExam = listDataExam.first.obs;
  }

  void onChangSelect(String? value) {
    if (value == null) return;
    dropdownValue.value = value;
  }

  void onChangSelectExam(String? value) {
    if (value == null) return;
    dropdownValueExam.value = value;
  }
}
