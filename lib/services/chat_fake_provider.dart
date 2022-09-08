import 'package:simple_chat/models/message.dart';

import '../models/chat.dart';

class ChatFakeProvider {
  Future<List<Chat>> getChats() async {
    final List<Chat> response = [];
    for (var i = 0; i < 3; i++) {
      response.add(Chat(
        id: i,
        name: 'chat$i',
        messages: _getMessage('chat$i'),
      ));
    }
    return response;
  }
}

List<Message> _getMessage(chatName) {
  final List<Message> response = [];
  for (var i = 0; i < 3; i++) {
    response.add(Message(id: i, text: '${chatName}text$i'));
  }
  return response;
}
