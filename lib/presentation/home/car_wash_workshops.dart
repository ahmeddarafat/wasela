import 'package:flutter/material.dart';

import 'colors.dart';

class CarWashWorkShop extends StatefulWidget {
  const CarWashWorkShop({Key? key}) : super(key: key);

  @override
  _CarWashWorkShopState createState() => _CarWashWorkShopState();
}

class _CarWashWorkShopState extends State<CarWashWorkShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kWhite,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          size: 20,
          color: kBlue,
        ),
        title: Text(
          "Car wash workshops",
          style: TextStyle(fontWeight: FontWeight.w700, color: kBlue),
        ),
      ),
      body: SafeArea(
        child: Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(50),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 250),
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.red,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                          6,
                                        )) // Background color
                                        ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 5.0, horizontal: 5.0),
                                      child: Text(
                                        "30 % Off",
                                        style: TextStyle(
                                          color: kWhite,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 120,
                                      height: 120,
                                      padding: const EdgeInsets.all(8.0),
                                      decoration: BoxDecoration(
                                        color: Colors.grey[300],
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child:Image.asset("assets/images/Ray.png",),
                                    ),
                                  ],
                                ),
                                const Text(
                                  "Ray Workshop",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Color.fromRGBO(0, 0, 0, 0.6),
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                                const Text("Ahmed Mohammed",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    )),
                                const Text("32 Minutes to arrive"),
                                const Text("120 LE"),
                                const Text("Mansoura, 12 street"),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, left: 50, right: 20),
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                            primary: kBlue,
                                            side: BorderSide(
                                                color: kBlue, width: 2),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                              16,
                                            ))),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10.0, horizontal: 12.0),
                                          child: Text(
                                            "Confirm",
                                            style: TextStyle(
                                              color: kWhite,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(40),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 120,
                                      height: 120,
                                      padding: const EdgeInsets.all(20),
                                      decoration: BoxDecoration(
                                        color: Colors.grey[300],
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Image.asset(
                                        'assets/images/Kobra.png',
                                        fit: BoxFit.scaleDown,
                                      ),
                                    ),
                                  ],
                                ),
                                const Text(
                                  "Kobra Workshop",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Color.fromRGBO(0, 0, 0, 0.6),
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                                const Text("Nader Ahmed",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    )),
                                const Text("43 Minutes to arrive"),
                                const Text("110 LE"),
                                const Text("Mansoura, 12 street"),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, left: 50, right: 20),
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                            primary: kBlue,
                                            side: BorderSide(
                                                color: kBlue, width: 2),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                              16,
                                            ))),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10.0, horizontal: 12.0),
                                          child: Text(
                                            "Confirm",
                                            style: TextStyle(
                                              color: kWhite,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
            ),
          ),
        ),
      ),
    );
  }
}
