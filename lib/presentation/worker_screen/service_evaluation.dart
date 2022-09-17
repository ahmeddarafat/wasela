
import 'package:flutter/material.dart';
import 'package:signin_screen/worker_screen/review_worker_reservation.dart';

import '../core/components/default_border_button.dart';
import '../core/style/colors.dart';

class ServiceEvaluation extends StatelessWidget{
  const ServiceEvaluation({Key? key}) : super(key: key);


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
    ))
        ,body:Padding(
          padding: const EdgeInsetsDirectional.only(start: 15,end: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          Text('My Informations',style:TextStyle(color: kBlue,fontSize: 25,fontWeight: FontWeight.bold),),
          const Center(child: Image(image: AssetImage('images/Group 89.png'))),
        Center(child: Text('Your service is done',style:TextStyle(color: kBlue,fontSize: 22,fontWeight: FontWeight.w500))),
        const SizedBox(height: 30,),
        Center(child: Text('Thanks for using our applicatin',style:TextStyle(color: kBlue,fontSize: 16,fontWeight: FontWeight.w500))),
        const SizedBox(height: 20,),
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
          const SizedBox(height: 40,
              width: 40,
              child: Center(child: Image(image: AssetImage('images/Rectangle 105.png')))),
            const SizedBox(width: 5,),
            Column(
              children: [
                Text('ahmed khaled',style: TextStyle(color: kBlue),),
                InkWell(onTap:(){}, child: const Text('View your profile',style: TextStyle(color: Colors.red),))
              ],
            ),
        ],),
        const SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            InkWell(onTap: (){},child: const Icon(Icons.star,color: Colors.amberAccent,)),
            InkWell(onTap: (){},child: const Icon(Icons.star,color: Colors.amberAccent,)),
            InkWell(onTap: (){},child: const Icon(Icons.star,color: Colors.amberAccent,)),
            InkWell(onTap: (){},child: const Icon(Icons.star,color: Colors.amberAccent,)),
          ],
        ),
        const SizedBox(height: 15,),
        Container(
          height: 80,
          decoration: BoxDecoration(
              color: kGrey,
              borderRadius: BorderRadiusDirectional.circular(17)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: TextFormField(
              maxLines: 3,
              minLines: 1,
              keyboardType: TextInputType.multiline,
              cursorColor: kBlue,
              style: TextStyle(fontSize: 18),
              decoration: InputDecoration(
                  labelText: 'Notes',labelStyle: TextStyle(color: kBlue)
                  ,border: OutlineInputBorder(borderSide: BorderSide.none),
                  contentPadding: EdgeInsetsDirectional.only(bottom: 20)),
            ),
          ),
        ),
        const SizedBox(height: 70,),
        DefultBorderButton(
          title: 'Send review' ,
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => ReviewWorkerReservation(),));
          },
        )
      ],
    ),
        ) ,
    );
  }

}