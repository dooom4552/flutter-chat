import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/chat_bloc.dart';
import '../../bloc/chat_state.dart';

class HeaderRightSide extends StatelessWidget {
  const HeaderRightSide({Key? key}) : super(key: key);

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
        return Container(
          color: Colors.blueGrey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  state.currentChat.name,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      decorationStyle: TextDecorationStyle.solid),
                ),
              )
            ],
          ),
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
