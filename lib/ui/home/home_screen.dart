import 'package:chat_app/data/models/conversation.dart';
import 'package:chat_app/ui/home/conversation_list_item.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Conversation> _items = [
      Conversation(
          1,
          'MahanFr',
          'https://randomuser.me/api/portraits/men/1.jpg',
          'Hello How are you?'),
      Conversation(
          2,
          'Jeniffer',
          'https://randomuser.me/api/portraits/women/1.jpg',
          'NEVER MIND i will do it'),
      Conversation(
          3,
          'Oliver Manson',
          'https://randomuser.me/api/portraits/men/2.jpg',
          'fuck you man i know it!'),
    ];
    return Container(
        color: Color(0xFF1b263b),
        child: ListView.builder(
          itemCount: _items.length,
          itemBuilder: (context, index) {
            return ConversationListItem(_items[index]);
          },
        ));
  }
}
