import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wafed/Screens/log_in_page.dart';

import 't_key.dart';

class why_choose_wafed_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/all/Frame_41-removebg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 160),
            Text(
              TKeys.why1.translate(context),
              style: TextStyle(
                color: Color(0xFF432C1E),
                fontSize: 26.sp,
                fontFamily: 'Comic Neue',
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 20),
            Text(
              TKeys.why2.translate(context),
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Comic Neue',
                fontWeight: FontWeight.w400,
                fontSize: 21.sp,
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Center(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(245, 67, 44, 30),
                      elevation: 3,
                      padding: EdgeInsets.only(
                        left: 70,
                        right: 70,
                      ),
                      shape: StadiumBorder(),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Log_in_Page()),
                      );
                    },
                    child: Text(
                      TKeys.why3.translate(context),
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontFamily: 'Graduate',
                        fontWeight: FontWeight.w500,
                        fontSize: 20.sp,
                      ),
                    )))
          ],
        ),
      ),
    );
  }
}
