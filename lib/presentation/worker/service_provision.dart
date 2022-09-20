import 'package:flutter/material.dart';
import 'colors.dart';

class ServiceProvision extends StatefulWidget {
  const ServiceProvision({Key? key}) : super(key: key);

  @override
  ServiceProvisionState createState() => ServiceProvisionState();
}

class ServiceProvisionState extends State<ServiceProvision> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: kBlue,
                ),
                iconSize: 15,
                onPressed: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Service Provision",
                style: TextStyle(
                    color: kBlue, fontSize: 25, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/position.png",
                      height: 250,
                      width: 250,
                    ),
                    const Text(
                      "Service Provision",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "(km)",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      height: 40,
                      width: 350,
                      color: kBlue,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "$counter km",
                            style: TextStyle(fontSize: 20, color: kWhite),
                          ),
                          Divider(
                            color: kWhite,
                            thickness: 10,
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.add_box_sharp,
                              color: kWhite,
                            ),
                            onPressed: () {
                              setState(() {
                                counter++;
                              });
                            },
                          ),
                          Text(
                            "$counter",
                            style: TextStyle(color: kWhite, fontSize: 25),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.minimize_sharp,
                              color: kWhite,
                            ),
                            onPressed: () {
                              setState(() {
                                if (counter > 0) {
                                  counter--;
                                }
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

class CounterCard extends StatelessWidget {
  const CounterCard({
    Key? key,
    required this.title,
    required this.counter,
    required this.onMinus,
    required this.onPlus,
  }) : super(key: key);

  final String title;
  final int counter;
  final VoidCallback onMinus;
  final VoidCallback onPlus;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(
                color: kWhite,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "$counter",
              style: TextStyle(
                color: kWhite,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: onMinus,
                  icon: const Icon(Icons.minimize_sharp),
                ),
                IconButton(
                  onPressed: onPlus,
                  icon: const Icon(Icons.add_box_sharp),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
