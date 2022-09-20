import 'package:flutter/material.dart';

import 'colors.dart';

class ReviewReservation extends StatefulWidget {
  const ReviewReservation({Key? key}) : super(key: key);

  @override
  ReviewReservationState createState() => ReviewReservationState();
}

class ReviewReservationState extends State<ReviewReservation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: kBlue,
                  ),
                  iconSize: 15,
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Review your reservation",
                  style: TextStyle(
                      color: kBlue, fontSize: 25, fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Car number",
                            style: TextStyle(color: Colors.grey[800]),
                          ),
                          Text(
                            "Model",
                            style: TextStyle(color: Colors.grey[800]),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "36748",
                            style: TextStyle(color: Colors.grey[800]),
                          ),
                          Text(
                            "36748",
                            style: TextStyle(color: Colors.grey[800]),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  "Services",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: kBlue,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey[350],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Car wash",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[800]),
                      ),
                      Text(
                        "35 LE",
                        style: TextStyle(color: Colors.grey[800]),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey[350],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Tyre change",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[800]),
                      ),
                      Text(
                        "70 LE",
                        style: TextStyle(color: Colors.grey[800]),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey[350],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total amount",
                        style: TextStyle(
                            fontWeight: FontWeight.w800, color: kBlue),
                      ),
                      Text(
                        "105 LE",
                        style: TextStyle(
                            fontWeight: FontWeight.w800, color: kBlue),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: kBlue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                          12,
                        )) // Background color
                        ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 100.0),
                      child: Text(
                        "Confirm reservation",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: kWhite,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: kWhite,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                              12,
                            )) // Background color
                            ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 100.0),
                          child: Text(
                            "Add new service",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: kBlue,
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
      ),
    );
  }
}
