import 'package:flutter/material.dart';

import '../core/style/colors.dart';




class ServiceProvision extends StatefulWidget {
    const ServiceProvision({Key? key}) : super(key: key);
  @override
  ServiceProvisionState createState() => ServiceProvisionState();
}

class ServiceProvisionState extends State<ServiceProvision> {
  int counter=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
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
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    const SizedBox(
    height: 10,
    ),
    Text(
    "Service Provision",
    style: TextStyle(
    color: kBlue,
    fontSize: 25,
    fontWeight: FontWeight.w700),
    ),
    const SizedBox(
    height: 20,
    ),
    Center(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Image.asset("images/position.jpg",height: 250,width: 250,),
      const Text("Service Provision",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 25),),
      const SizedBox(height: 15,),
      const Text("(km)",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 25),),
        const SizedBox(height: 25,),
        Container(
          height: 40,
          width: 350,
          color: kBlue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:[
               Text("$counter km",style: TextStyle(fontSize: 20,color: kWhite),),
              Divider(color: kWhite,thickness: 10,),
              InkWell(child: Icon(Icons.add,color: kWhite,), onTap: () {
                setState(() {
                  counter++;
                });
              },),
               Text("$counter",style: TextStyle(color: kWhite,fontSize: 25),),
              InkWell(child: Icon(Icons.minimize_sharp,color: kWhite,), onTap: () {
                setState(() {
                  if(counter>0){
                  counter--;}
                });
              },),
            ],
          ),
          ),

      ],),),]),),),);}}
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
            Text(title,style: TextStyle(
              color: kWhite,
              fontSize: 16,
            ),),
            const SizedBox(height: 20),
            Text(
              "$counter",style: TextStyle(
              color: kWhite,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(onTap: onMinus,child: const Icon(Icons.minimize_sharp),),
                InkWell(onTap: onPlus, child: const Icon(Icons.add_box_sharp),),
              ],
            )
          ],
        ),
      ),
    );
  }
}