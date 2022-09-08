import '../models/chat.dart';

abstract class ChatState {}

class ChatEmptyState extends ChatState {}

class ChatLoadState extends ChatState {
  final List<Chat> chats;
  final Chat currentChat;
  ChatLoadState({required this.chats, required this.currentChat});
}
