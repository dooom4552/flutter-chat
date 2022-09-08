import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_chat/models/message.dart';

import '../../bloc/chat_bloc.dart';
import '../../bloc/chat_state.dart';
import 'message_widget.dart';

class MiddleRightSide extends StatelessWidget {
  const MiddleRightSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatBloc, ChatState>(builder: (context, state) {
      if (state is ChatEmptyState) {
        return const Center(
          child: Text(
            'No data received',
            style: TextStyle(fontSize: 20.0),
          ),
        );
      } else if (state is ChatLoadState) {
        return Expanded(
          child: ListView.builder(
              controller: ScrollController(),
              itemCount: state.currentChat.messages.length,
              itemBuilder: (context, index) => MessageWidget(
                    message: state.currentChat.messages[index],
                  )),
        );
      } else {
        return const Center(
          child: Text(
            'Error',
            style: TextStyle(fontSize: 20.0),
          ),
        );
      }
    });
  }
}
