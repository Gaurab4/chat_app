import 'package:chat_app/CustomUI/CustomCard.dart';
import 'package:chat_app/Model/ChatModel.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {

  List<ChatModel> chats =[
    ChatModel(
      name: "Gaurav",
      isGroup: false,
      currentMessage: "hello",
      time: "1:18",
      icon: "person.svg",
    ),
    ChatModel(
      name: "pawan",
      isGroup: false,
      currentMessage: "oye",
      time: "1:10",
      icon: "person.svg",
    ),
    ChatModel(
      name: "Manish",
      isGroup: false,
      currentMessage: "ky",
      time: "1:17",
      icon: "person.svg",
    ),
    ChatModel(
      name: "Sonam",
      isGroup: false,
      currentMessage: "ky",
      time: "1:18",
      icon: "person.svg",
    ), ChatModel(
      name: "bro-sis",
      isGroup: true,
      currentMessage: "ky",
      time: "1:16",
      icon: "groups.svg",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.chat_outlined),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context,index)=>CustomCard(chatModel : chats[index]),

      ),
    );
  }
}
