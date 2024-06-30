// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:wafed/Screens/Verification.dart';

// class Forget_Password_Page extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Container(
//       height: double.infinity,
//       width: double.infinity,
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage("assets/images/all/Frame_41-removebg.png"),
//           fit: BoxFit.cover,
//         ),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(30.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(
//               height: 150.sp,
//             ),
//             Text(
//               'Forgot Password?',
//               style: TextStyle(
//                 fontFamily: 'Merriweather',
//                 fontWeight: FontWeight.w500,
//                 color: Color(0xFF432C1E),
//                 fontSize: 30.sp,
//               ),
//             ),
//             SizedBox(
//               height: 20.sp,
//             ),
//             Text(
//               'Enter your email address',
//               style: TextStyle(
//                 fontFamily: 'Merriweather',
//                 fontWeight: FontWeight.w400,
//                 color: Color.fromARGB(255, 126, 122, 122),
//                 fontSize: 15.sp,
//               ),
//             ),
//             SizedBox(height: 20.sp),
//             TextField(
//               decoration: InputDecoration(
//                 labelText: 'Email',
//                 labelStyle: TextStyle(color: Colors.grey),
//                 focusedBorder: UnderlineInputBorder(
//                   borderSide: BorderSide(color: Colors.grey),
//                 ),
//               ),
//             ),
//             SizedBox(height: 10.sp),
//             Center(
//                 child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       primary: Color.fromARGB(245, 67, 44, 30),
//                       elevation: 3,
//                       padding: EdgeInsets.only(
//                         left: 100.sp,
//                         right: 100.sp,
//                       ),
//                       shape: StadiumBorder(),
//                     ),
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => Verification()),
//                       );
//                     },
//                     child: Text(
//                       'Submit',
//                       style: TextStyle(
//                         color: Color.fromARGB(255, 255, 255, 255),
//                         fontFamily: 'Graduate',
//                         fontWeight: FontWeight.w400,
//                         fontSize: 20.sp,
//                       ),
//                     ))),
//             SizedBox(
//               height: 20,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   'Have an account? ',
//                   style: TextStyle(color: Colors.black),
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.pop(context, 'Log_in_Page');
//                   },
//                   child: Text(
//                     'Sign In',
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       color: Color.fromARGB(245, 67, 44, 30),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     ));
//   }
// }
