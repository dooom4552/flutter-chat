import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_chat/bloc/chat_bloc.dart';
import 'package:simple_chat/services/chat_repository.dart';
import 'package:simple_chat/widgets/left_side.dart';
import 'package:simple_chat/widgets/middle_side.dart';
import 'package:simple_chat/widgets/right_side.dart';

class HomePage extends StatelessWidget {
  final ChatRepository chatRepository = ChatRepository();

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChatBloc>(
      create: (context) => ChatBloc(chatRepository: chatRepository),
      child: Scaffold(
        body: Row(
          children: const [LeftSide(), MiddleSide(), RightSide()],
        ),
      ),
    );
  }
}
