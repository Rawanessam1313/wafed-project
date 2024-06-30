// ignore_for_file: use_super_parameters, unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
// ignore: depend_on_referenced_packages, unused_import
import 'package:uni_links/uni_links.dart';
import 'package:wafed/Screens/t_key.dart';

class Sixteen16 extends StatelessWidget {
  const Sixteen16({Key? key}) : super(key: key);

  get child => null;

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable

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
        child: Column(children: [
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
                SizedBox(width: 8),
                ClipOval(
                  child: Image.asset(
                    'assets/images/colleges/17.png',
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
            TKeys.sixteen16.translate(context),
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            TKeys.sixteen161.translate(context),
            style: TextStyle(fontSize: 14),
          ),
          const Divider(
            color: Colors.black,
            thickness: 1,
          ),
          Text(
            TKeys.sixteen162.translate(context),
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          ListView(
            shrinkWrap: true,
            children: [
              Text(
                TKeys.sixteen163.translate(context),
              ),
              Text(
                TKeys.sixteen164.translate(context),
              ),
              Text(
                TKeys.sixteen165.translate(context),
              ),
              Text(
                TKeys.sixteen166.translate(context),
              ),
              Text(
                TKeys.sixteen167.translate(context),
              ),
              Text(
                TKeys.sixteen168.translate(context),
              ),
              Text(
                TKeys.sixteen169.translate(context),
              ),
              Text(
                TKeys.sixteen1610.translate(context),
              ),
              Text(
                TKeys.sixteen1611.translate(context),
              ),
              Text(
                TKeys.sixteen1612.translate(context),
              ),
              Text(
                TKeys.sixteen1613.translate(context),
              ),
              Text(
                TKeys.sixteen1614.translate(context),
              ),
            ],
          ),
          const Divider(
            color: Colors.black,
            thickness: 1,
          ),
          Text(
            TKeys.sixteen1615.translate(context),
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 13),
            child: Row(
              children: [
                Text(
                  TKeys.sixteen1615.translate(context),
                  style: TextStyle(fontSize: 10.sp),
                ),
                const SizedBox(width: 8), // قم بتعديل القيمة هنا حسب الحاجة
                GestureDetector(
                  onTap: () {
                    const String url = 'http://mu.menofia.edu.eg/fpe/Home/ar';
// ignore: deprecated_member_use
                    launch(url);
                  },
                  child: const Text(
                    'http://mu.menofia.edu.eg/fpe/Home/ar',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                )
                //
              ],
            ),
          ),
          const SizedBox(height: 16),
          Text(
            TKeys.sixteen1617.translate(context),
            style: TextStyle(fontSize: 10.sp),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: () {
                const String url = 'https://mu.menofia.edu.eg/sci/WebForm2/ar';
                // ignore: deprecated_member_use
                launch(url);
              },
              child: const Text(
                'https://mu.menofia.edu.eg/sci/WebForm2/ar',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
