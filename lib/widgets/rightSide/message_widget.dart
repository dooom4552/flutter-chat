import 'package:flutter/material.dart';
import 'package:simple_chat/models/message.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget({Key? key, required this.message}) : super(key: key);
  final Message message;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      child: Card(
        color: Colors.amber,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(message.text),
        ),
      ),
    );
  }
}
