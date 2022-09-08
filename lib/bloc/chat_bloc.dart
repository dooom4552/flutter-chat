import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_chat/models/message.dart';
import 'package:simple_chat/services/chat_repository.dart';

import '../models/chat.dart';
import 'chat_event.dart';
import 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final ChatRepository chatRepository;
  List<Chat> chats = [];
  Chat currentChat = Chat(id: 1, messages: [], name: 'fggf');
  ChatBloc({required this.chatRepository}) : super(ChatEmptyState()) {
    on<ChatLoadEvent>(_chatLoad);
    on<ChatChangeEvent>(_chatChange);
    on<ChatAddMessageEvent>(_addMessage);
  }

  FutureOr<void> _chatLoad(ChatLoadEvent event, Emitter<ChatState> emit) async {
    chats = await chatRepository.getChats();
    final chat = chats[0];
    currentChat = chat;
    emit(ChatLoadState(chats: chats, currentChat: chat));
  }

  FutureOr<void> _chatChange(ChatChangeEvent event, Emitter<ChatState> emit) {
    currentChat = event.chat;
    emit(ChatLoadState(chats: chats, currentChat: event.chat));
  }

  FutureOr<void> _addMessage(
      ChatAddMessageEvent event, Emitter<ChatState> emit) {
    currentChat.messages.add(Message(id: 4, text: event.text));
    emit(ChatLoadState(chats: chats, currentChat: currentChat));
  }
}
