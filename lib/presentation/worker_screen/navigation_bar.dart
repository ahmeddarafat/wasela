
import 'package:flutter/material.dart';
import 'package:signin_screen/worker_screen/worker_page.dart';

import '../core/style/colors.dart';
import 'expired_orders.dart';
import 'home_page_orders.dart';
import 'worker_profile.dart';
import 'mybalance.dart';

class NavigationTest extends StatefulWidget{
  @override
  State<NavigationTest> createState() => _NavigationTestState();
}

class _NavigationTestState extends State<NavigationTest> {
  int currentIndex = 0;
  List<Widget> screens=[HomePageOrders(), ExpiredOrders (),MyBalance(),WorkerProfile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      backgroundColor: kWhite,
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Color(0xFF1c1447),
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        elevation: 10,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.local_car_wash_outlined,
              ),
              label: 'Current requests'),
          BottomNavigationBarItem(icon: Icon(Icons.check_circle_rounded), label: 'Expired orders'),
          BottomNavigationBarItem(icon: Icon(Icons.monetization_on_rounded), label: 'My Balance'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded), label: 'Profile'),
        ],
      ),
    );
  }
}