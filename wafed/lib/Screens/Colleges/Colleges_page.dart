import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:wafed/Screens/Colleges/Eighteen18.dart';
import 'package:wafed/Screens/Colleges/Four.dart';
import 'package:wafed/Screens/Colleges/Fourteen14.dart';
import 'package:wafed/Screens/Colleges/Nineteen19.dart';
import 'package:wafed/Screens/Colleges/Seventeen17.dart';
import 'package:wafed/Screens/Colleges/Sixteen16.dart';
import 'package:wafed/Screens/Colleges/Thirteen13.dart';
import 'package:wafed/Screens/Colleges/eight.dart';
import 'package:wafed/Screens/Colleges/eleven11.dart';
import 'package:wafed/Screens/Colleges/fifteen15.dart';
import 'package:wafed/Screens/t_key.dart';
import 'package:wafed/localization.dart';
import 'custom_button.dart'; // Import the CustomButton widget
import 'five.dart';
import 'nine.dart';
import 'one.dart';
import 'seven.dart';
import 'six.dart';
import 'ten.dart';
import 'three.dart';
import 'twelve12.dart';
import 'two.dart';

class Colleges_page extends StatelessWidget {
  Colleges_page({Key? key}) : super(key: key);
  final localizationController = Get.find<LocalizationController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/all/Frame_41-removebg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 120),
                CustomButton(
                  imagePath: 'assets/images/colleges/1.png',
                  buttonText: TKeys.one.translate(context),
                  textColor: Color.fromARGB(245, 67, 44, 30),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => one()),
                    );
                  },
                ),
                const SizedBox(height: 12),
                CustomButton(
                  imagePath: 'assets/images/colleges/2.png',
                  buttonText: TKeys.two.translate(context),
                  textColor: Color.fromARGB(245, 67, 44, 30),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => two()),
                    );
                  },
                ),
                const SizedBox(height: 12),
                CustomButton(
                  imagePath: 'assets/images/colleges/3.png',
                  buttonText: TKeys.three.translate(context),
                  textColor: Color.fromARGB(245, 67, 44, 30),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => three()),
                    );
                  },
                ),
                const SizedBox(height: 12),
                CustomButton(
                  imagePath: 'assets/images/colleges/4.jpeg',
                  buttonText: TKeys.four.translate(context),
                  textColor: Color.fromARGB(245, 67, 44, 30),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => four()),
                    );
                  },
                ),
                const SizedBox(height: 12),
                CustomButton(
                  imagePath: 'assets/images/colleges/5.png',
                  buttonText: TKeys.five.translate(context),
                  textColor: Color.fromARGB(245, 67, 44, 30),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => five()),
                    );
                  },
                ),
                const SizedBox(height: 12),
                CustomButton(
                  imagePath: 'assets/images/colleges/6.png',
                  buttonText: TKeys.six.translate(context),
                  textColor: Color.fromARGB(245, 67, 44, 30),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => six()),
                    );
                  },
                ),
                const SizedBox(height: 12),
                CustomButton(
                  imagePath: 'assets/images/colleges/7.png',
                  buttonText: TKeys.seven.translate(context),
                  textColor: Color.fromARGB(245, 67, 44, 30),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => seven()),
                    );
                  },
                ),
                const SizedBox(height: 12),
                CustomButton(
                  imagePath: 'assets/images/colleges/8.png',
                  buttonText: TKeys.eight.translate(context),
                  textColor: Color.fromARGB(245, 67, 44, 30),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => eight()),
                    );
                  },
                ),
                const SizedBox(height: 12),
                CustomButton(
                  imagePath: 'assets/images/colleges/9.jpeg',
                  buttonText: TKeys.nine.translate(context),
                  textColor: Color.fromARGB(245, 67, 44, 30),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => nine()),
                    );
                  },
                ),
                const SizedBox(height: 12),
                CustomButton(
                  imagePath: 'assets/images/colleges/11.png',
                  buttonText: TKeys.ten.translate(context),
                  textColor: Color.fromARGB(245, 67, 44, 30),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ten()),
                    );
                  },
                ),
                const SizedBox(height: 12),
                CustomButton(
                  imagePath: 'assets/images/colleges/12.png',
                  buttonText: TKeys.one1.translate(context),
                  textColor: Color.fromARGB(245, 67, 44, 30),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => eleven11()),
                    );
                  },
                ),
                const SizedBox(height: 12),
                CustomButton(
                  imagePath: 'assets/images/colleges/13.png',
                  buttonText: TKeys.two2.translate(context),
                  textColor: Color.fromARGB(245, 67, 44, 30),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => twelve12()),
                    );
                  },
                ),
                const SizedBox(height: 12),
                CustomButton(
                  imagePath: 'assets/images/colleges/14.jpeg',
                  buttonText: TKeys.three3.translate(context),
                  textColor: Color.fromARGB(245, 67, 44, 30),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Thirteen13()),
                    );
                  },
                ),
                const SizedBox(height: 12),
                CustomButton(
                  imagePath: 'assets/images/colleges/15.png',
                  buttonText: TKeys.four4.translate(context),
                  textColor: Color.fromARGB(245, 67, 44, 30),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Fourteen14()),
                    );
                  },
                ),
                const SizedBox(height: 12),
                CustomButton(
                  imagePath: 'assets/images/colleges/16.png',
                  buttonText: TKeys.five5.translate(context),
                  textColor: Color.fromARGB(245, 67, 44, 30),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => fifteen15()),
                    );
                  },
                ),
                const SizedBox(height: 12),
                CustomButton(
                  imagePath: 'assets/images/colleges/17.png',
                  buttonText: TKeys.six6.translate(context),
                  textColor: Color.fromARGB(245, 67, 44, 30),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Sixteen16()),
                    );
                  },
                ),
                const SizedBox(height: 12),
                CustomButton(
                  imagePath: 'assets/images/colleges/18.png',
                  buttonText: TKeys.seven7.translate(context),
                  textColor: Color.fromARGB(245, 67, 44, 30),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Seventeen17()),
                    );
                  },
                ),
                const SizedBox(height: 12),
                CustomButton(
                  imagePath: 'assets/images/colleges/19.png',
                  buttonText: TKeys.eight8.translate(context),
                  textColor: Color.fromARGB(245, 67, 44, 30),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Eighteen18()),
                    );
                  },
                ),
                const SizedBox(height: 12),
                CustomButton(
                  imagePath: 'assets/images/colleges/10.jpeg',
                  buttonText: TKeys.nine9.translate(context),
                  textColor: Color.fromARGB(245, 67, 44, 30),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Nineteen19()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
