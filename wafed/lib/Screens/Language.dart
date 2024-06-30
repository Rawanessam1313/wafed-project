// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import '../main.dart';

// class language extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.white,
//         body: Container(
//           height: double.infinity,
//           width: double.infinity,
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage("assets/images/all/Frame_41-removebg.png"),
//               fit: BoxFit.cover,
//             ),
//           ),
//           child: Padding(
//             padding: const EdgeInsets.all(40.0),
//             child: ListView(
//               children: [
//                 SizedBox(height: 170.sp),
//                 ButtonTheme(
//                     minWidth: 250.0,
//                     height: 250.0,
//                     child: OutlinedButton(
//                       child: Text(
//                         'English',
//                         style: TextStyle(
//                           color: Color.fromARGB(255, 67, 44, 30),
//                           fontFamily: 'Graduate',
//                           fontWeight: FontWeight.w800,
//                           fontSize: 22.sp,
//                         ),
//                       ),
//                       style: OutlinedButton.styleFrom(
//                           side: BorderSide(
//                               color: Color.fromARGB(245, 67, 44, 30), width: 4),
//                           padding: EdgeInsets.only(
//                             left: 5.sp,
//                             right: 5.sp,
//                           ),
//                           minimumSize: Size(90, 90)),
//                       onPressed: () {},
//                     )),
//                 SizedBox(
//                   height: 100,
//                 ),
//                 ButtonTheme(
//                     minWidth: 250.0,
//                     height: 250.0,
//                     child: OutlinedButton(
//                       child: Text(
//                         'العربيه',
//                         style: TextStyle(
//                           color: Color.fromARGB(245, 67, 44, 30),
//                           fontFamily: 'Graduate',
//                           fontWeight: FontWeight.w800,
//                           fontSize: 22.sp,
//                         ),
//                       ),
//                       style: OutlinedButton.styleFrom(
//                           side: BorderSide(
//                               color: Color.fromARGB(245, 67, 44, 30), width: 4),
//                           padding: EdgeInsets.only(
//                             left: 5.sp,
//                             right: 5.sp,
//                           ),
//                           minimumSize: Size(90, 90)),
//                       onPressed: () {
//                         // Navigator.push(
//                         //   context,
//                         //   MaterialPageRoute(
//                         //       builder: (context) =>
//                         //           University_Activities_page()),
//                         // );
//                       },
//                     )),
//               ],
//             ),
//           ),
//         ));
//   }
// }
