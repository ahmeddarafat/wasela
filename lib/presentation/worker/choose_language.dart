import 'package:flutter/material.dart';

import 'colors.dart';

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
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  leading: Radio<String>(
                    value: 'English',
                    groupValue: _selectedLanguage,
                    onChanged: (value) {
                      setState(() {
                        _selectedLanguage = value!;
                      });
                    },
                  ),
                  title: const Text('English'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[400],
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
                  ),
                  title: const Text('Arabic'),
                ),
              ),
              const SizedBox(height: 25),
            ]),
          ),
        ),
      ),
    );
  }
}
