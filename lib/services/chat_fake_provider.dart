import 'dart:math';

import 'package:lorem_gen/lorem_gen.dart';
import 'package:simple_chat/models/message.dart';

import '../models/chat.dart';

class ChatFakeProvider {
  Future<List<Chat>> getChats() async {
    final List<Chat> response = [];
    final countChats = Random().nextInt(10) + 1;
    for (var i = 0; i < countChats; i++) {
      final chatName = Lorem.word(numWords: 1);
      response.add(Chat(
        id: i,
        name: chatName,
        messages: _getMessage('chat$i'),
      ));
    }
    return response;
  }
}

List<Message> _getMessage(chatName) {
  final List<Message> response = [];
  final countMessages = Random().nextInt(30) + 1;
  for (var i = 0; i < countMessages; i++) {
    final countWords = Random().nextInt(20) + 1;
    final words = Lorem.word(numWords: countWords);
    final bool align = Random().nextBool();
    response.add(Message(id: i, text: words, right: align));
  }
  return response;
}
