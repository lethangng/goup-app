// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/color_app.dart';

class MessageResContainer extends StatefulWidget {
  const MessageResContainer({
    super.key,
    required this.title,
    required this.image,
    required this.listData,
    this.event,
  });

  final String title;
  final String image;
  final List<String> listData;
  final void Function()? event;

  @override
  State<MessageResContainer> createState() => _MessageResContainerState();
}

class _MessageResContainerState extends State<MessageResContainer> {
  bool isEdit = false;
  String isSave = 'Lưu tạm';
  final TextEditingController onEditController = TextEditingController();

  void handleEdit() {
    setState(() {
      isEdit = true;
    });
  }

  void handleSave() {
    setState(() {
      isSave = 'Đã lưu tạm thành công';
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // var isShowKeyboard = MediaQuery.of(context).viewInsets.bottom;
    // void handleShowKeyboard() {
    //   if (isShowKeyboard == 0) {
    //     setState(() {
    //       isEdit = false;
    //     });
    //   }
    // }
    onEditController.text = widget.title;
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(widget.image),
            const SizedBox(width: 8),
            Expanded(
              child: TextField(
                readOnly: isEdit,
                controller: onEditController,
                cursorColor: ColorApp.colorGrey2,
                style: const TextStyle(color: Colors.white),
                textAlignVertical: TextAlignVertical.top,
                textAlign: TextAlign.left,
                decoration: const InputDecoration(
                  hintText: '',
                  isDense: true,
                  hintStyle: TextStyle(
                    color: ColorApp.colorGrey2,
                    // fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.zero,
                ),
              ),
            ),
            IconButton(
              onPressed: () => handleEdit(),
              style: IconButton.styleFrom(
                padding: EdgeInsets.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                minimumSize: Size.zero,
              ),
              icon: SvgPicture.asset('assets/icons/edit.svg'),
            ),
          ],
        ),
        Column(
          children: widget.listData
              .map((item) => Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          width: size.width * 0.1,
                          child:
                              SvgPicture.asset('assets/icons/error-exam.svg'),
                        ),
                        Flexible(
                          child: Text(
                            item,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ))
              .toList(),
        ),
        Row(
          children: [
            SizedBox(width: size.width * 0.1),
            TextButton(
              onPressed: () => handleSave(),
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(12),
                backgroundColor: Colors.grey,
                foregroundColor: const Color(0xFFE0E0E6),
              ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/${isSave == 'Lưu tạm' ? 'luu-tam' : 'is-save'}.svg',
                  ),
                  const SizedBox(width: 8),
                  Text(
                    isSave,
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
