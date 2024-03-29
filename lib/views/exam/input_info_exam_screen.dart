import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../app/routes.dart';
import '../../utils/color_app.dart';
import '../../view_models/exam/input_info_exam_view_model.dart';

class InputInfoExamScreen extends StatelessWidget {
  InputInfoExamScreen({super.key});
  final InputInfoExamViewModel inputInfoExamViewModel =
      Get.put(InputInfoExamViewModel());

  final TextEditingController nameExamCotroller = TextEditingController();
  final TextEditingController desCotroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    nameExamCotroller.text = 'Đề Hóa lớp 12 Tổng hợp';
    desCotroller.text = 'Bộ đề chọn lọc các dạng hóa hay gặp';
    return Scaffold(
      backgroundColor: const Color(0xFF201E1F),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Nhập thông tin đề thi',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.white,
          onPressed: () => Get.back(),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            // vertical: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 1,
                width: size.width,
                color: const Color(0xFF353542),
              ),
              const SizedBox(height: 16),
              const Text(
                'Tên bộ đề *',
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFFC1C1CD),
                ),
              ),
              const SizedBox(height: 4),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: ColorApp.colorGrey,
                    width: 1,
                  ),
                  color: Colors.transparent,
                ),
                height: size.height * 0.06,
                child: TextField(
                  controller: nameExamCotroller,
                  cursorColor: ColorApp.colorGrey2,
                  style: const TextStyle(color: Colors.white),
                  textAlignVertical: TextAlignVertical.center,
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    isDense: true, // Cho chu can giua theo chieu doc
                    hintText: '',
                    hintStyle: const TextStyle(
                      color: ColorApp.colorGrey2,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.03,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'Banner',
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFFC1C1CD),
                ),
              ),
              const SizedBox(height: 4),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: SizedBox(
                  width: double.infinity,
                  // height: size.height * 0.6,
                  child: Image.asset(
                    'assets/images/banner.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xFF312E2E),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset('assets/icons/dung-mau.svg'),
                    const SizedBox(width: 8),
                    const Text(
                      'Đổi mẫu banner',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'Mô tả',
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFFC1C1CD),
                ),
              ),
              const SizedBox(height: 4),
              Container(
                height: size.height * 0.15,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    width: 1,
                    color: const Color(0xFF636363),
                  ),
                ),
                child: SingleChildScrollView(
                  child: TextField(
                    controller: desCotroller,
                    maxLines: null,
                    keyboardType: TextInputType.multiline,
                    textInputAction: TextInputAction.newline,
                    cursorColor: ColorApp.colorGrey2,
                    style: const TextStyle(color: Colors.white),
                    // textAlignVertical: TextAlignVertical.center,
                    // textAlign: TextAlign.left,
                    decoration: const InputDecoration(
                      isDense: true, // Cho chu can giua theo chieu doc
                      hintStyle: TextStyle(
                        color: ColorApp.colorGrey2,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.zero,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'Hashtag',
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFFC1C1CD),
                ),
              ),
              const SizedBox(height: 4),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    width: 1,
                    color: const Color(0xFF636363),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Wrap(
                        spacing: 4,
                        children: [
                          chip(
                            title: 'Nạp kiến thức',
                            background: const Color(0xFFE4D3FF),
                            textColor: const Color(0xFF5E00F5),
                            event: () {},
                          ),
                          chip(
                            title: 'Ôn tập hóa',
                            background: const Color(0xFFFFD2CC),
                            textColor: const Color(0xFFFF4C1C),
                            event: () {},
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      style: IconButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      icon: SvgPicture.asset('assets/icons/arrow-down.svg'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'Thuộc linh vật:',
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFFC1C1CD),
                ),
              ),
              const SizedBox(height: 4),
              Theme(
                data: Theme.of(context).copyWith(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                ),
                child: DropdownButtonHideUnderline(
                  child: Obx(
                    () => DropdownButton2<String>(
                      items: inputInfoExamViewModel.listData
                          .map((item) => DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                              ))
                          .toList(),
                      value: inputInfoExamViewModel.dropdownValue.value,
                      onChanged: (String? newValue) =>
                          inputInfoExamViewModel.onChangSelect(newValue),
                      customButton: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            width: 1,
                            color: const Color(0xFF636363),
                          ),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                inputInfoExamViewModel.dropdownValue.value,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            SvgPicture.asset('assets/icons/arrow-down.svg'),
                            const SizedBox(width: 12),
                            IconButton(
                              onPressed: () {},
                              style: IconButton.styleFrom(
                                minimumSize: Size.zero,
                                padding: EdgeInsets.zero,
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              ),
                              icon: SvgPicture.asset('assets/icons/add-2.svg'),
                            ),
                          ],
                        ),
                      ),
                      dropdownStyleData: DropdownStyleData(
                        maxHeight: size.height * 0.2,
                        width: size.width * 0.8,
                        padding: EdgeInsets.zero,
                        elevation: 0,
                        decoration: BoxDecoration(
                          color: const Color(0xFF3F3F40),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        offset: const Offset(20, -10),
                        scrollbarTheme: ScrollbarThemeData(
                          radius: const Radius.circular(40),
                          thickness: WidgetStateProperty.all(3),
                          thumbVisibility: WidgetStateProperty.all(true),
                          thumbColor: WidgetStateProperty.all(Colors.white),
                        ),
                      ),
                      menuItemStyleData: const MenuItemStyleData(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          // vertical: 8,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'Cấu hình đề thi:',
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFFC1C1CD),
                ),
              ),
              const SizedBox(height: 4),
              Theme(
                data: Theme.of(context).copyWith(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                ),
                child: DropdownButtonHideUnderline(
                  child: Obx(
                    () => DropdownButton2<String>(
                      isExpanded: true,
                      items: inputInfoExamViewModel.listDataExam
                          .map((item) => DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                              ))
                          .toList(),
                      value: inputInfoExamViewModel.dropdownValueExam.value,
                      onChanged: (String? newValue) =>
                          inputInfoExamViewModel.onChangSelectExam(newValue),
                      customButton: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            width: 1,
                            color: const Color(0xFF636363),
                          ),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                inputInfoExamViewModel.dropdownValueExam.value,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            SvgPicture.asset('assets/icons/arrow-down.svg'),
                          ],
                        ),
                      ),
                      dropdownStyleData: DropdownStyleData(
                        maxHeight: size.height * 0.25,
                        width: size.width * 0.8,
                        padding: EdgeInsets.zero,
                        elevation: 0,
                        decoration: BoxDecoration(
                          color: const Color(0xFF3F3F40),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        offset: const Offset(20, -10),
                        scrollbarTheme: ScrollbarThemeData(
                          radius: const Radius.circular(40),
                          thickness: WidgetStateProperty.all(6),
                          thumbVisibility: WidgetStateProperty.all(true),
                        ),
                      ),
                      menuItemStyleData: const MenuItemStyleData(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          // vertical: 8,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 60),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () => Get.toNamed(Routes.exportExamSusscess),
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xFFFF6E47),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: const Text(
                    'Tiếp theo',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget wrapContainer({required String title, required Widget widget}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 12),
        Text(
          title,
          style: const TextStyle(
            fontSize: 12,
            color: Color(0xFFC1C1CD),
          ),
        ),
        const SizedBox(height: 4),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              width: 1,
              color: const Color(0xFF636363),
            ),
          ),
          child: widget,
        ),
      ],
    );
  }

  Widget chip({
    required String title,
    required Color background,
    required Color textColor,
    required event,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              color: textColor,
            ),
          ),
          const SizedBox(width: 8),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/delete.svg'),
            style: IconButton.styleFrom(
              minimumSize: Size.zero,
              padding: EdgeInsets.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
          ),
        ],
      ),
    );
  }
}
