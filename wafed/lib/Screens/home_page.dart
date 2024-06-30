import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wafed/Screens/Welcome_page.dart';

import 'Language.dart';

class homepage extends StatelessWidget {
  const homepage({Key? Key}) : super(key: Key);

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFD9D9D9),
      body: Stack(
        children: [
          Positioned(
            left: 16,
            top: -10.h,
            child: SizedBox(
              width: 110.w,
              height: 130.h,
              child: Image(
                image: AssetImage('assets/images/all/uni_en.png'),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
              ),
            ),
          ),
          Container(
            // Background color
            child: Center(
              child: Text(
                'wafed',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 90.sp,
                  fontFamily: 'Zen Tokyo Zoo',
                  fontWeight: FontWeight.w400,
                  height: 0, // Text color
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 12,
            left: 300.w,
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Welcome_Page()),
                );
              },
              icon: Icon(Icons.arrow_forward_ios, size: 30.sp),
            ),
          ),
        ],
      ),
    );
  }
}
