import 'package:chat_app/Model/ChatModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class IndividualPage extends StatefulWidget {
    IndividualPage({Key? key,required this.chatModel}) : super(key: key);
  final ChatModel chatModel;

  @override
  _IndividualPageState createState() => _IndividualPageState();
}

class _IndividualPageState extends State<IndividualPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        leadingWidth: 70,
        titleSpacing: 0,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.arrow_back,size: 24,),
              CircleAvatar(
                child: SvgPicture.asset(
                  widget.chatModel.isGroup?"assets/groups.svg":"assets/person.svg",
                  color: Colors.white,
                  height: 36,
                  width: 36,
                ),
                radius: 20,
                backgroundColor: Colors.blueGrey,
              ),
            ],
          ),
        ),
        title: InkWell(
          onTap: (){},
          child: Container(
            margin: EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.chatModel.name ,
                  style: TextStyle(
                    fontSize: 18.5,
                    fontWeight: FontWeight.bold,
                ),
                ),
                Text("last seen today at 22:00",style: TextStyle(fontSize: 13,
                ),
                ),

              ],
            ),
          ),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.videocam)),
          IconButton(onPressed: (){}, icon: Icon(Icons.call)),
          PopupMenuButton<String>(
              onSelected: (value){
                print(value);
              },
              itemBuilder: (BuildContext context){
                return[
                  PopupMenuItem(child: Text("New group"), value: "New group",),
                  PopupMenuItem(child: Text("New broadcast"), value: "New broadcast",),
                  PopupMenuItem(child: Text("Linked devices"), value: "Linked devices",),
                  PopupMenuItem(child: Text("Starred messages"), value: "Starred message",),
                  PopupMenuItem(child: Text("Payment"), value: "Payment",),
                  PopupMenuItem(child: Text("Setting"), value: "Setting",),
                ];
              })
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            ListView(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width-55,
                      child: Card(
                        margin: EdgeInsets.only(left: 2,right: 2,bottom: 8),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: TextFormField(
                            textAlignVertical: TextAlignVertical.center,
                            keyboardType: TextInputType.multiline,
                            maxLines: 5,
                            minLines: 1,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintMaxLines: 5,
                              hintText: "Type a message",
                              prefixIcon: IconButton(icon: Icon(Icons.emoji_emotions,),onPressed: (){},),
                              suffixIcon: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(onPressed: (){}, icon: Icon(Icons.attach_file),),
                                  IconButton(onPressed: (){}, icon: Icon(Icons.attach_money),),
                                  IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt),),
                                ],
                              ),
                              contentPadding: EdgeInsets.all(5),
                            ),
                          ))),
                  Padding(
                      padding: const EdgeInsets.only(bottom: 8,right: 2),
                      child: CircleAvatar(
                        backgroundColor: Color(0xFF128c7E),
                        radius: 25,
                        child: IconButton(icon: Icon(Icons.mic,color: Colors.white,),onPressed: (){},),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
