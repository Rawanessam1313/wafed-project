// ignore_for_file: deprecated_member_use, duplicate_ignore, unnecessary_import, use_super_parameters

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/widgets.dart';
import 'package:wafed/Screens/t_key.dart';

class six extends StatelessWidget {
  const six({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/all/back2.jpeg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 50.sp,
            ),
            Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    height: 2,
                    color: Colors.grey,
                  ),
                  const SizedBox(width: 8),
                  ClipOval(
                    child: Image.asset(
                      'assets/images/colleges/6.png',
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 8),
                  Container(
                    width: 150,
                    height: 2,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            // children: <Widget>[
            Text(
              TKeys.six66.translate(context),
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              TKeys.six67.translate(context),
              style: TextStyle(fontSize: 14),
            ),
            const Divider(
              color: Colors.black,
              thickness: 1,
            ),
            Text(
              TKeys.six68.translate(context),
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            ListView(
              shrinkWrap: true,
              children: [
                Text(
                  TKeys.six69.translate(context),
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
                Text(
                  TKeys.six70.translate(context),
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
                Text(
                  TKeys.six71.translate(context),
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
                Text(
                  TKeys.six72.translate(context),
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Divider(
              color: Colors.black,
              thickness: 1,
            ),
            Text(
              TKeys.six73.translate(context),
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13),
              child: Row(
                children: [
                  Text(
                    TKeys.six74.translate(context),
                    style: TextStyle(fontSize: 10.sp),
                  ),
                  const SizedBox(width: 8),
                  GestureDetector(
                    onTap: () {
                      const String url = 'http://mu.menofia.edu.eg/com/Home/ar';
                      // ignore: deprecated_member_use
                      launch(url);
                    },
                    child: const Text(
                      'http://mu.menofia.edu.eg/com/Home/ar',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Text(
              TKeys.six75.translate(context),
              style: TextStyle(fontSize: 10.sp),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: GestureDetector(
                onTap: () {
                  const String url =
                      'https://www.menofia.edu.eg/ENG/View/135823/ar';
                  launch(url);
                },
                child: const Text(
                  'https://www.menofia.edu.eg/agr/View/135893/ar',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
