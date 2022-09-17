import 'package:flutter/material.dart';

import '../core/style/colors.dart';

class ChangeLanguage extends StatefulWidget {
  const ChangeLanguage({Key? key}) : super(key: key);

  @override
  ChangeLanguageState createState() => ChangeLanguageState();
}

class ChangeLanguageState extends State<ChangeLanguage> {
  String _selectedLanguage = "English";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    ),),),),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              "Change Language",
              style: TextStyle(
                  color: kBlue, fontSize: 25, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Select the language of the application",
              style: TextStyle(
                  color: kBlue, fontSize: 20, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              decoration: BoxDecoration(
                color: kGrey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                leading: Radio<String>(
                    value: 'English',
                    groupValue: _selectedLanguage,
                    onChanged: (value) {
                      setState(
                        () {
                          _selectedLanguage = value!;
                        },
                      );
                    },
                    activeColor: kBlue),
                title: const Text('English'),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: kGrey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                leading: Radio<String>(
                  value: 'Arabic',
                  groupValue: _selectedLanguage,
                  onChanged: (value) {
                    setState(() {
                      _selectedLanguage = value!;
                    });
                  },
                  activeColor: kBlue,
                ),
                title: const Text('Arabic'),
              ),
            ),
            const SizedBox(height: 25),
          ]),
        ),
      ),
    );
  }
}
