import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wafed/Screens/home_page.dart';
import 'package:wafed/Screens/t_key.dart';
import 'package:wafed/Screens/why_choose%20_page.dart';
import 'package:wafed/localization.dart';
import '../generated/l10n.dart';
import '../localization.dart';

class Welcome_Page extends StatefulWidget {
  Welcome_Page({Key? key}) : super(key: key);

  @override
  _Welcome_PageState createState() => _Welcome_PageState();
}

class _Welcome_PageState extends State<Welcome_Page> {
  final localizationController = Get.find<LocalizationController>();
  bool isEnglish = true; // Initial language state

  void toggleLanguage() {
    setState(() {
      isEnglish = !isEnglish;
      localizationController.toggleLanguage();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD9D9D9),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/all/Frame_41-removebg.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 250),
                Text(
                  TKeys.welcome_text1.translate(context),
                  style: TextStyle(
                    color: Color(0xFF432C1E),
                    fontSize: 25.sp,
                    fontFamily: 'Comic Neue',
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  TKeys.welcome_text2.translate(context),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Comic Neue',
                    fontWeight: FontWeight.w600,
                    fontSize: 20.sp,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  // Back Icon Column
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => homepage()),
                          );
                        },
                        icon: Icon(Icons.arrow_back_ios),
                      ),
                      SizedBox(
                          height:
                              20.h), // Adds vertical space of 20 logical pixels
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => why_choose_wafed_page()),
                          );
                        },
                        icon: Icon(Icons.arrow_forward_ios),
                      ),
                      SizedBox(
                          height:
                              20.h), // Adds vertical space of 20 logical pixels
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 80,
            right: 20,
            child: ElevatedButton(
              onPressed: toggleLanguage,
              child: Text(isEnglish ? "Change to Arabic" : "Change to English"),
              style: ElevatedButton.styleFrom(
                primary:
                    Color.fromARGB(245, 67, 44, 30), // Button background color
                onPrimary:
                    Color.fromARGB(255, 255, 255, 255), // Button text color
              ),
            ),
          ),
        ],
      ),
    );
  }
}
