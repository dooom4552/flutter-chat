import 'package:flutter/material.dart';
import 'package:simple_chat/models/message.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget({Key? key, required this.message}) : super(key: key);
  final Message message;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          message.right ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 50.0,
          child: Card(
              color: message.right ? Colors.green.shade200 : Colors.grey,
              child: Text(message.text)),
        )
      ],
    );
  }
}
