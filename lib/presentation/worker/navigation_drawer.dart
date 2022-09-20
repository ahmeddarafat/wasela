import 'package:flutter/material.dart';
import 'main_drawer.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation Drawer"),
      ),
      //Now we are going to open a new file
      // where we will create the layout of the Drawer
      drawer: const Drawer(
        child: MainDrawer(),
      ),
    );
  }
}
