// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'message_res_container.dart';
import 'message_user_container.dart';

class MessageContainer extends StatelessWidget {
  const MessageContainer({
    super.key,
    required this.messageType,
    required this.image,
    required this.title,
    required this.listData,
    this.event,
  });

  final String messageType;
  final String image;
  final String title;
  final List<String> listData;
  final void Function()? event;

  @override
  Widget build(BuildContext context) {
    if (messageType == 'user') {
      return MessageUserContainer(
        image: image,
        title: title,
      );
    } else {
      return MessageResContainer(
        title: title,
        image: image,
        listData: listData,
        event: event,
      );
    }
  }
}
