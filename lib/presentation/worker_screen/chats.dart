import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/style/colors.dart';
import 'ChatMessage.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  List<ChatMessage> messages = [
    ChatMessage(messageContent: "Hello!", messageType: "receiver"),
    ChatMessage(messageContent: "Hello !", messageType: "sender"),
    ChatMessage(
        messageContent: "How can i help you?",
        messageType: "sender"),
    ChatMessage(messageContent: "I want to wash my car , please.", messageType: "receiver"),
    ChatMessage(
        messageContent: "What is your address?", messageType: "sender"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: kGrey,
        flexibleSpace: SafeArea(
          child: Container(
            padding: const EdgeInsets.only(right: 16),
            child: Row(
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                CircleAvatar(
                  backgroundImage: const AssetImage('images/photo_5848292311258217587_m.jpg'),
                  backgroundColor: kGrey,
                  maxRadius: 20,
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        "Kriss Benwat",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Online",
                        style: TextStyle(
                            color: Colors.grey.shade600, fontSize: 13),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Stack(children: <Widget>[
        ListView.builder(
          itemCount: messages.length,
          shrinkWrap: true,
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, top: 10, bottom: 10),
            );
          },
        ),
        ListView.builder(
          itemCount: messages.length,
          shrinkWrap: true,
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.only(
                  left: 14, right: 14, top: 10, bottom: 10),
              child: Align(
                alignment: (messages[index].messageType == "receiver"
                    ? Alignment.topLeft
                    : Alignment.topRight),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: (messages[index].messageType == "receiver"
                        ? kGrey
                        : kBlue),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    messages[index].messageContent,
                    style: TextStyle(  color: (messages[index].messageType == "receiver"
            ? kBlue
                : kWhite),
                  )
                ),
              ),
              ),
            );

          },

        ),
        Align(
          alignment:  Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
                children:
                [
                  Expanded(
                    flex:8,
                    child: SizedBox(
                      height: 45,
                      child: TextField(
                          cursorHeight: 20.0,
                          style: const TextStyle(fontSize: 15.0),
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 50.0, 30.0),
                            prefixIcon: Icon(Icons.camera_alt_rounded,color: kBlue),
                            hintText: "Write your message",
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: kBlue, width: 32.0),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide:  BorderSide(color:const Color(0xFFE8E8E8), width: 32.0),
                                borderRadius: BorderRadius.circular(20.0)
                            )
                            ,)

                      ),
                    ),




                  ),
                  const SizedBox(
                    height: 50,
                  ),

                  Expanded(
                    flex:1,
                    child:

                    Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children:[Icon(Icons.send_rounded,color: kBlue, )
                        ] ),
                  ),



                ]  ),
          ),
        ),
      ]
      ),


    );
  }
}
