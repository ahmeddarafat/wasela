
 import 'package:flutter/material.dart';
import 'package:signin_screen/worker_screen/worker_page.dart';

import '../core/components/default_border_button.dart';
import '../core/style/colors.dart';
import '../home_screens/ask a question.dart';
import '../home_screens/help_page.dart';

class ExpiredOrders  extends StatefulWidget{
  @override
  State<ExpiredOrders> createState() => _ExpiredOrdersState();
}

class _ExpiredOrdersState extends State<ExpiredOrders> {
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

          child: Padding(
            padding: const EdgeInsetsDirectional.only(top: 20,start: 15,end: 15),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Orders',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Roboto',
                      fontStyle: FontStyle.normal,
                      color: Color(0xff1c1447),
                    ),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    'Car owners who ask for services ',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto',
                        fontStyle: FontStyle.normal,
                        color: Color.fromRGBO(
                            0, 0, 0, 0.6)
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Container(

                    padding: EdgeInsetsDirectional.only(end: 7),
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    height: 200,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(
                          243, 243, 243, 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 20),
                          child: Row(

                            children: [
                              const Expanded(
                                flex: 2,
                                child: Text("20 Oct,2022 / 8:00 PM",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.0,
                                    color: Colors.red,
                                  ),
                                ),
                              ),

                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.grey,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(
                                          6,
                                        )) // Background color
                                ),
                                child: const Padding(
                                  padding:
                                  EdgeInsets.symmetric(
                                      vertical: 5.0, horizontal: 10.0),
                                  child: Text(
                                    "Denied",

                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            InkWell(
                              child: const Padding(
                                padding: EdgeInsets.only(top: 10, left: 20),
                                child: Icon(Icons.local_car_wash_rounded,
                                  color: Color(0xff1c1447),),
                              ),
                              onTap: () {
                                //action code when clicked
                                print("The icon is clicked");
                              },
                            ),
                            const SizedBox(width: 10.0),
                            const Text("Car washing  ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17.0,
                                )),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                              ],
                            ),
                          ],
                        ),

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            InkWell(
                              child: const Padding(
                                padding: EdgeInsets.only(top: 10, left: 20),
                                child: Icon(Icons.location_on_rounded,
                                  color: Color(0xff1c1447),),
                              ),
                              onTap: () {
                                //action code when clicked
                                print("The icon is clicked");
                              },
                            ),
                            SizedBox(width: 10.0),
                            const Text("Mansoura , 2nd street",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17.0,
                                )),

                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 10, left: 10, right: 10),
                              child: Text("35 LE",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                  ),
                  SizedBox(height: 10,),
                  Container(

                    padding: EdgeInsetsDirectional.only(end: 7),
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    height: MediaQuery
                        .of(context)
                        .size
                        .height / 4,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(
                          243, 243, 243, 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(top: 10),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 20),
                            child: Row(

                              children: [
                                const Expanded(
                                  child: Text("20 Oct,2022 / 8:00 PM",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.0,
                                      color: Colors.red,
                                    ),
                                  ),
                                ),

                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.grey,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(
                                            6,
                                          )) // Background color
                                  ),
                                  child: const Text(
                                    "Done",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              InkWell(
                                child: const Padding(
                                  padding: EdgeInsets.only(top: 10, left: 20),
                                  child: Icon(Icons.local_car_wash_rounded,
                                    color: Color(0xff1c1447),),
                                ),
                                onTap: () {
                                  //action code when clicked
                                  print("The icon is clicked");
                                },
                              ),
                              const SizedBox(width: 10.0),
                              const Text("Car washing  ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17.0,
                                  )),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: const [
                                ],
                              ),
                            ],
                          ),

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              InkWell(
                                child: const Padding(
                                  padding: EdgeInsets.only(top: 10, left: 20),
                                  child: Icon(Icons.location_on_rounded,
                                    color: Color(0xff1c1447),),
                                ),
                                onTap: () {
                                  //action code when clicked
                                  print("The icon is clicked");
                                },
                              ),
                              const SizedBox(width: 10.0),
                              const Text("Mansoura , 2nd street",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17.0,
                                  )),

                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 10, left: 10, right: 10),
                                child: Text("35 LE",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                  ),
                ]),
          ),

      ),
    );
  }
}