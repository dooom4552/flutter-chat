import 'package:simple_chat/models/message.dart';

class Chat {
  int id;
  String name;
  List<Message> messages;
  Chat({required this.id, required this.name, required this.messages});
}
