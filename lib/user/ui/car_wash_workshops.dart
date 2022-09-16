// import 'package:flutter/material.dart';

// import 'check.dart';

// class CarWashWorkshops extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: (AppBar
//         (
//         elevation: 0,
//         backgroundColor: Colors.white,
//         leading: IconButton(
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//             icon: Icon(
//               Icons.keyboard_arrow_left,
//               color: Color(0xFF1c1447),
//               size: 40,
//             )),
//       )),
//     backgroundColor: Colors.white,
//     body: Padding(
//       padding: const EdgeInsetsDirectional.only(start: 25,end: 25),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text('Car Wash Workshops',style: TextStyle(
//               color: Color(0xFF1c1447),
//               fontSize: 27,fontWeight: FontWeight.bold),),
//           SizedBox(height: 15,),
//           Container(
//             padding: EdgeInsetsDirectional.all(8.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.end,
//               children: [
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Expanded(
//                       flex: 2,
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Container(height: 100,
//                             width: 100,
//                             child: Image(image: AssetImage('images/onbarding2.png'),)),
//                       ),
//                     ),
//                     Expanded(
//                       flex: 2,
//                       child: Padding(
//                         padding: const EdgeInsets.only(top:6),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text('Ray workshop Ahmed Mohamed',style: TextStyle(fontSize: 15),
//                             ),
//                             SizedBox(height: 6),
//                             Text('32 minute to arrive',style: TextStyle(color: Colors.grey),),
//                             SizedBox(height: 6),
//                             Text('120LE',style: TextStyle(color: Colors.grey)),
//                             SizedBox(height: 6),
//                             Text('Mansoura 12 street',style: TextStyle(color: Colors.grey))
//                           ],
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       child: Container(
//                         child: Center(child: Text('30% off',style: TextStyle(color: Colors.white),)),
//                         width: 35,
//                         height:30,
//                         decoration: BoxDecoration(color: Colors.red,
//                         borderRadius: BorderRadiusDirectional.circular(17)),
//                       ),
//                     )
//                   ],
//                 ),
//                 SizedBox(height:50),
//                 Container(
//                   height: 40,
//                   width: 150,
//                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(17),color: Color(0xFF1c1447),),

//                     child: MaterialButton(onPressed: (){
//                       Navigator.push(context, MaterialPageRoute(
//                         builder: (context) => HomePage(),));
//                     },child: Text('Confirm',
//                       style: TextStyle(color:Colors.white ,fontSize: 20,fontWeight: FontWeight.w500),),))
//               ],
//             ),
//             height: 240,
//             width: double.infinity,
//             decoration: BoxDecoration(
//               color: Colors.grey[200],
//               borderRadius: BorderRadiusDirectional.circular(17)

//             ),
//           ),
//           SizedBox(height: 20,),
//           Container(
//             padding: EdgeInsetsDirectional.all(8.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.end,
//               children: [
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Expanded(
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Container(height: 100,
//                             width: 100,
//                             child: Image(image: AssetImage('images/onbarding2.png'),)),
//                       ),
//                     ),
//                     Expanded(
//                       flex: 2,
//                       child: Padding(
//                         padding: const EdgeInsets.only(top:6),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text('Ray workshop Ahmed Mohamed',style: TextStyle(fontSize: 15),
//                             ),
//                             SizedBox(height: 6),
//                             Text('32 minute to arrive',style: TextStyle(color: Colors.grey),),
//                             SizedBox(height: 6),
//                             Text('120LE',style: TextStyle(color: Colors.grey)),
//                             SizedBox(height: 6),
//                             Text('Mansoura 12 street',style: TextStyle(color: Colors.grey))
//                           ],
//                         ),
//                       ),
//                     ),

//                   ],
//                 ),
//                 SizedBox(height:50),
//                 Container(
//                     height: 40,
//                     width: 150,
//                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(17),color: Color(0xFF1c1447),),

//                     child: MaterialButton(onPressed: (){
//                       Navigator.push(context, MaterialPageRoute(
//                         builder: (context) => HomePage(),));
//                     },child: Text('Confirm',
//                       style: TextStyle(color:Colors.white ,fontSize: 20,fontWeight: FontWeight.w500),),))
//               ],
//             ),
//             height: 240,
//             width: double.infinity,
//             decoration: BoxDecoration(
//                 color: Colors.grey[200],
//                 borderRadius: BorderRadiusDirectional.circular(17)

//             ),
//           ),
//         ],
//       ),
//     ),);
//   }

// }