
import 'package:flutter/material.dart';
import 'package:signin_screen/core/components/default_text_field.dart';
import 'package:signin_screen/core/style/colors.dart';

import '../core/components/default_border_button.dart';
import '../home_screens/help_page.dart';

class WorkerInformations extends StatefulWidget{
  @override
  State<WorkerInformations> createState() => _WorkerInformationsState();
}

class _WorkerInformationsState extends State<WorkerInformations> {
  List <String> items = ['Mansoura','Alex','Cairo','Poorsaid ','Tanta'];
  String ? value ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

backgroundColor: kWhite,
      appBar: AppBar(
        backgroundColor: kWhite,
        elevation: 0,
        leading:  MaterialButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: kBlue,
          ),
        ),
      ),

      body: Container(height: double.infinity,child:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsetsDirectional.only(start: 20,end: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('My Informations',style:TextStyle(color: kBlue,fontSize: 25,fontWeight: FontWeight.bold),),
              SizedBox(height: 18,),
              Center(
                child: Container(
                  child: IconButton(onPressed: (){},icon: Icon(Icons.camera_alt_outlined),alignment: AlignmentDirectional.bottomStart),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color:kGrey,
                    borderRadius: BorderRadiusDirectional.circular(50)
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              DefualtTextField(labelText: 'Full Name',
                  isPassword: false, isObsecure: false),
              const SizedBox(height: 15,),
              DefualtTextField(labelText: '5 xxx xxx xx',
                  isPassword: false, isObsecure: false),
              const SizedBox(height: 15,),
              DefualtTextField(labelText: 'your adress',
                  isPassword: false, isObsecure: false),
              const SizedBox(height: 15,),
              DefualtTextField(labelText: 'your phone',
                  isPassword: false, isObsecure: false),
              const SizedBox(height: 15,),
              Container(
                width: double.infinity,
                clipBehavior: Clip.antiAlias,
                height: 45,
                decoration: BoxDecoration(
                  color: kGrey,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    hint: Padding(
                      padding: const EdgeInsetsDirectional.only(start: 15),
                      child: Text('City',style: TextStyle(fontSize:18,color: kBlue),),
                    ),
                    icon: const Padding(
                      padding: EdgeInsetsDirectional.only(end: 10),
                      child: Icon(Icons.arrow_drop_down,color: Colors.black,),
                    ),
                    isExpanded: true,
                    iconSize: 30,
                    value: value,
                    items: items.map(buildMinueItem).toList(),
                    onChanged: (value)=> setState(()=> this.value = value) ,
                  ),
                ),
              ),
              const SizedBox(height:50),
              DefultBorderButton(
                title: 'Save',
                onPressed: (){},
              ),
              const SizedBox(height: 70,)

            ],
          ),
        ),
      ),
    ));

  }
}