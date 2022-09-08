import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/chat_bloc.dart';
import '../../bloc/chat_event.dart';

class BottomRideSide extends StatelessWidget {
  BottomRideSide({Key? key}) : super(key: key);
  final myContrroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final ChatBloc chatBloc = BlocProvider.of<ChatBloc>(context);

    return Container(
        color: Colors.blueGrey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              SizedBox(
                width: 300,
                child: TextField(
                  controller: myContrroller,
                  autofocus: true,
                  textInputAction: TextInputAction.go,
                  onSubmitted: (value) {
                    chatBloc.add(ChatAddMessageEvent(text: myContrroller.text));
                    myContrroller.clear();
                  },
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter text',
                      filled: true,
                      fillColor: Colors.white),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  chatBloc.add(ChatAddMessageEvent(text: myContrroller.text));
                  myContrroller.clear();
                },
                child: const Text('Send'),
              ),
            ],
          ),
        ));
  }
}
