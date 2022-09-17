import 'package:flutter/material.dart';

import '../core/components/default_border_button.dart';
import '../core/style/colors.dart';
import '../home_screens/ask a question.dart';


class MyBalance extends StatefulWidget {
  const MyBalance({Key? key}) : super(key: key);

  @override
  State<MyBalance> createState() => _MyBalanceState();
}

class _MyBalanceState extends State<MyBalance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
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
    ),),),),
      body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, right: 10, left: 30),
                  child: Text(
                    'My Balance',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                      fontStyle: FontStyle.normal,
                      color: kBlue,
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 3,
                      decoration: BoxDecoration(
                        color:kGrey,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10, ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Current Balance",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22.0,

                                        color: kBlue,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "5 acceptable services",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14.0,
                                          color: kGreen,

                                        ),
                                      ),
                                    ),

                                  ],
                                ),

                              ),
                              const SizedBox(height: 10.0),
                              Text("Car washing  ",
      style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 16.0,
          color:kBlue,
      ),

      ),
                              const SizedBox(height: 10.0),
                              Text("Order number:12123",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                  color:kBlue,
                                ),

                              ),
                              const SizedBox(height: 10.0),
                              Text("Service requester's name :",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                  color:kBlue,
                                ),

                              ),
                              const SizedBox(height: 10.0),
                              Text("Date :  ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                  color:kBlue,
                                ),

                              ),
                     ] ),
                    ),
                    ),

                ),
                const SizedBox(height: 50.0),
                Padding(
                  padding: const EdgeInsets.only(top: 10, right: 10, left: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,

                          color: kBlue,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, right: 10, left: 30),
                        child: Text(
                          "120 LE",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: kGreen,

                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                const SizedBox(height: 50.0),
                Padding(
                  padding: const EdgeInsets.only(top: 10, right: 10, left: 30),
                  child: DefultBorderButton(title: "Accepted", onPressed: () {  }, ),
                ),
              ]),

      ),
    );
  }
}
