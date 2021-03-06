import 'package:chat_app/Model/ChatModel.dart';
import 'package:chat_app/Screens/IndividualPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key,required this.chatModel}) : super(key: key);
  final ChatModel chatModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context)=> IndividualPage(
                  chatModel: chatModel,
                )));
      },
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          child: SvgPicture.asset(
            chatModel.isGroup?"assets/groups.svg":"assets/person.svg",
            color: Colors.white,
            height: 38,
            width: 38,
          ),
          backgroundColor: Colors.blueGrey,
        ),
        title: Text(
          chatModel.name,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
        ),
        ),
        subtitle: Row(
          children: [
            Icon(Icons.done_all),
            SizedBox(
              width: 3,
            ),
            Text(
              chatModel.currentMessage,
              style: TextStyle(
                fontSize: 13,
              ),
            ),
          ],
        ),
        trailing: Text(chatModel.time),
      ),
    );
  }
}
