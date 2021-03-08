import 'package:chat_app/data/models/conversation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_chat_bubble/bubble_type.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_1.dart';

class MessagingScreen extends StatelessWidget {
  final Conversation conversation;

  //requiring the list of todos
  MessagingScreen({Key key, @required this.conversation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(22),
              child: Image.network(
                conversation.userProfileImage,
                height: 44,
                width: 44,
              )),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Text(
              conversation.username,
            ),
          )
        ]),
      ),
      body: Column(
        children: [
          ChatBubble(
            clipper: ChatBubbleClipper1(type: BubbleType.sendBubble),
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(top: 20),
            backGroundColor: Colors.blue,
            child: Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.7,
              ),
              child: Text(
                "Hello Wold",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Expanded(
              child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Color(0xFFdddddd),
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          color: Color(0xFFbbbbbb),
                          borderRadius: BorderRadius.circular(15)),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Message',
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10)),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () => {},
                  )
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
