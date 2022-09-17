import 'package:flutter/material.dart';
import 'package:signin_screen/login_screen/signin_screen.dart';
import 'package:signin_screen/worker_screen/service_provision.dart';
import 'package:signin_screen/worker_screen/worker_informations.dart';
import 'package:signin_screen/worker_screen/worker_page.dart';

import 'choose_language.dart';

class WorkerProfile extends StatelessWidget {
  const WorkerProfile({Key? key}) : super(key: key);

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
      body: Column(children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1594616838951-c155f8d978a0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  "Ahmed Ali",
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
        ),
        const Divider(),
        const SizedBox(
          height: 20.0,
        ),
        ListTile(
          onTap: () {
            Navigator.push(context,MaterialPageRoute(builder: (context) => WorkerPage(),));
          },
          leading: const Icon(
            Icons.home_filled,
          ),
          title: const Text("Home"),
        ),
        ListTile(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ServiceProvision(),));
          },
          leading: const Icon(
            Icons.place_sharp,
          ),
          title: const Text("Service Provision"),
        ),
        ListTile(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => WorkerInformations(),));
          },
          leading: const Icon(
            Icons.person_pin,
          ),
          title: const Text("My Information"),
        ),
        ListTile(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ChangeLanguage(),));
          },
          leading: const Icon(
            Icons.g_translate_outlined,
          ),
          title: const Text("Change Language"),
        ),
        ListTile(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn(),));
          },
          leading: const Icon(
            Icons.logout,
          ),
          title: const Text("LogOut"),
        ),
      ]),
    );
  }
}
