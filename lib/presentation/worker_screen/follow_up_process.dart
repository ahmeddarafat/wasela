
import 'package:flutter/material.dart';
import 'package:signin_screen/core/components/default_border_button.dart';
import 'package:signin_screen/core/style/colors.dart';
import 'package:signin_screen/worker_screen/service_evaluation.dart';

class FollowUpProcess extends StatelessWidget{
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
          )
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Follow up the process',style:TextStyle(color: kBlue,fontSize: 25,fontWeight: FontWeight.bold),),
            const SizedBox(height: 30,),
            Text('Is the process done ?',style:TextStyle(color: kBlue,fontSize: 22,fontWeight: FontWeight.w500),),
            const SizedBox(height: 20,),
            Row(
              children: [
                Expanded(child: DefultBorderButton(title: 'Yes', onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ServiceEvaluation(),));
                },size: 200)),
                const SizedBox(height: 20,),
                Expanded(child: DefultBorderButton(title: 'No', onPressed: (){},size: 200)),

              ],
            ),

          ],
        ),
      ),
    );
  }

}