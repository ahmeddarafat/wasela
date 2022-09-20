import 'package:flutter/material.dart';
import 'colors.dart';

class FuelChoosing extends StatefulWidget {
  const FuelChoosing({Key? key}) : super(key: key);

  @override
  _FuelChoosingState createState() => _FuelChoosingState();
}

class _FuelChoosingState extends State<FuelChoosing> {

  String _selectedLanguage = "Fuel 95";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: kBlue,size: 15), onPressed: () {  },
                  ),

            Text(
                  "pick a fuel type",
                  style: TextStyle(
                      color: kBlue,
                      fontSize: 25,
                      fontWeight: FontWeight.w700),),
                const Text("Same price as the petrol station"),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: kBlue,),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[300],
                  ), //BoxDecoration
                  child: ListTile(
                    leading: Radio<String>(
                      value: 'Fuel 95',
                      groupValue: _selectedLanguage,
                      onChanged: (value) {
                        setState(() {
                          _selectedLanguage = value!;
                        });
                      },
                    ),
                    title: const Text('Fuel 95'),
                    subtitle: const Text('''LE 10.75 per litre
Higher performance'''),
                  ), //CheckboxListTile
                ),Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: kBlue,),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[300],
                  ), //BoxDecoration
                  child: ListTile(
                    leading: Radio<String>(
                      value: 'Fuel 92',
                      groupValue: _selectedLanguage,
                      onChanged: (value) {
                        setState(() {
                          _selectedLanguage = value!;
                        });
                      },
                    ),
                    title: const Text('Fuel 92'),
                    subtitle: const Text('''LE 9.25 per litre
Economic              '''),
                  ), //CheckboxListTile
                ),Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: kBlue,),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[300],
                  ), //BoxDecoration
                  child:ListTile(
                    leading: Radio<String>(
                      value: 'Fuel 80',
                      groupValue: _selectedLanguage,
                      onChanged: (value) {
                        setState(() {
                          _selectedLanguage = value!;
                        });
                      },
                    ),
                    title: const Text('Fuel 80'),
                    subtitle: const Text('LE 10.75 per litre'),
                  ),
                ), Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: kBlue,),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[300],
                  ), //BoxDecoration
                  child: ListTile(
                    leading: Radio<String>(
                      value: 'Natural Gas',
                      groupValue: _selectedLanguage,
                      onChanged: (value) {
                        setState(() {
                          _selectedLanguage = value!;
                        });
                      },
                    ),
                    title: const Text('Natural Gas'),
                    subtitle: const Text('LE 3.75 per meter square'),
                  ), //CheckboxListTile
                ), Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: kBlue,),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[300],
                  ), //BoxDecoration
                  child: ListTile(
                    leading: Radio<String>(
                      value: 'solar',
                      groupValue: _selectedLanguage,
                      onChanged: (value) {
                        setState(() {
                          _selectedLanguage = value!;
                        });
                      },
                    ),
                    title: const Text('solar'),
                    subtitle: const Text('LE 3.75 per meter square'),
                  ), //CheckboxListTile
                ),Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: kBlue,
                        side: BorderSide( color: kBlue, width: 2),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(
                              16,
                            ))
                    ),
                    child: Padding(
                      padding:
                      const EdgeInsets.symmetric(vertical: 10.0,horizontal: 150.0),
                      child: Text(
                        "Confirm",
                        style: TextStyle(
                          color: kWhite,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],),),
            ),
          ), //Center
    );
  }
}
