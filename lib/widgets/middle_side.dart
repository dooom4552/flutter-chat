import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_chat/bloc/chat_bloc.dart';

import '../bloc/chat_event.dart';
import 'middleSide/chat_list.dart';

class MiddleSide extends StatelessWidget {
  const MiddleSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ChatBloc chatBloc = BlocProvider.of<ChatBloc>(context);
    chatBloc.add(ChatLoadEvent());
    return SizedBox(
      width: 346,
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.blueGrey,
            border: Border(
              top: BorderSide.none,
              left: BorderSide.none,
              right: BorderSide(color: Colors.red, width: 1.0),
              bottom: BorderSide.none,
            )),
        child: const ChatList(),
      ),
    );
  }
}
