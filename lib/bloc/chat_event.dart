import '../models/chat.dart';

abstract class ChatEvent {}

class ChatLoadEvent extends ChatEvent {}

class ChatChangeEvent extends ChatEvent {
  final Chat chat;

  ChatChangeEvent({required this.chat});
}

class ChatAddMessageEvent extends ChatEvent {
  final String text;

  ChatAddMessageEvent({required this.text});
}
