import '../models/chat.dart';
import 'chat_fake_provider.dart';

class ChatRepository {
  final ChatFakeProvider _chatFakeProvider = ChatFakeProvider();
  Future<List<Chat>> getChats() => _chatFakeProvider.getChats();
}
