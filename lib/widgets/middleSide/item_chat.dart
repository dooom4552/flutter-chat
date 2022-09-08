import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_chat/models/chat.dart';

import '../../bloc/chat_bloc.dart';
import '../../bloc/chat_event.dart';

class ItemChat extends StatelessWidget {
  const ItemChat({Key? key, required this.chat, required this.idCurrentChat})
      : super(key: key);
  final Chat chat;
  final int idCurrentChat;

  @override
  Widget build(BuildContext context) {
    final ChatBloc chatBloc = BlocProvider.of<ChatBloc>(context);
    return Material(
      child: ListTile(
        title: Text(chat.name),
        hoverColor: Colors.blueGrey.shade200,
        tileColor: chat.id == idCurrentChat
            ? Colors.blueGrey.shade200
            : Colors.blueGrey.shade300,
        enabled: true,
        onTap: () {
          chatBloc.add(ChatChangeEvent(chat: chat));
        },
      ),
    );
  }
}
