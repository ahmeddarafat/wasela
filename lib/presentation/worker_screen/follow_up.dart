import 'package:flutter/material.dart';

import '../core/components/default_border_button.dart';
import 'chats.dart';



class FollowUp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: EdgeInsets.only(top:10,left: 30),
          child: IconButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Color(0xff1c1447),
            ),
          ),
        ),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
     const Padding(
      padding: EdgeInsets.only(top: 10, right: 10, left: 30),
      child: Text(
        'Allow your order',
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w600,
          fontFamily: 'Roboto',
          fontStyle: FontStyle.normal,
          color: Color(0xff1c1447),
        ),
      ),
    ),

              Image.asset("images/photo_5848292311258217586_x.jpg"),

            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 10, left: 30),
              child: DefultBorderButton(title: "Contact with user", onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => Chats(),));
              }, ),
            )
    ])
    );

  }
}
