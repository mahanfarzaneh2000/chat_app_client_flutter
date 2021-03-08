import 'package:chat_app/data/models/conversation.dart';
import 'package:chat_app/ui/messaging/messaging_screen.dart';
import 'package:flutter/material.dart';

class ConversationListItem extends StatefulWidget {
  final Conversation item;
  //Constractor
  ConversationListItem(this.item);

  @override
  _ConversationListItemState createState() => _ConversationListItemState();
}

class _ConversationListItemState extends State<ConversationListItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 1),
        child: ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    MessagingScreen(conversation: widget.item),
              ),
            );
          },
          tileColor: Color(0xFF415a77),
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
          leading: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.network(
                widget.item.userProfileImage,
                height: 50,
                width: 50,
              )),
          title: Text(
            '${widget.item.username}',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          subtitle: Text(
            '${widget.item.latestMessage}',
            style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 0.7), fontSize: 15),
          ),
        ));
  }
}
