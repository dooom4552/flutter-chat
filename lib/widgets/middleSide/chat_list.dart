import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_chat/bloc/chat_state.dart';
import '../../../bloc/chat_bloc.dart';
import 'item_chat.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

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
        return ListView.builder(
          controller: ScrollController(),
          itemCount: state.chats.length,
          itemBuilder: (context, index) => ItemChat(
              chat: state.chats[index], idCurrentChat: state.currentChat.id),
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
