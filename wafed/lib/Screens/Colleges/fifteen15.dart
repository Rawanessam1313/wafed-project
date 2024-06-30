// ignore_for_file: use_super_parameters, unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
// ignore: depend_on_referenced_packages, unused_import
import 'package:uni_links/uni_links.dart';
import 'package:wafed/Screens/t_key.dart';

class fifteen15 extends StatelessWidget {
  const fifteen15({Key? key}) : super(key: key);

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
                const SizedBox(width: 8),
                ClipOval(
                  child: Image.asset(
                    'assets/images/colleges/16.png',
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 8),
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
            TKeys.fifteen15.translate(context),
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            TKeys.fifteen151.translate(context),
            style: TextStyle(fontSize: 14),
          ),
          const Divider(
            color: Colors.black,
            thickness: 1,
          ),
          Text(
            TKeys.fifteen152.translate(context),
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          ListView(
            shrinkWrap: true,
            children: [
              Text(
                TKeys.fifteen153.translate(context),
              ),
              Text(
                TKeys.fifteen154.translate(context),
              ),
              Text(
                TKeys.fifteen155.translate(context),
              ),
              Text(
                TKeys.fifteen156.translate(context),
              ),
              Text(
                TKeys.fifteen157.translate(context),
              ),
              Text(
                TKeys.fifteen158.translate(context),
              ),
              Text(
                TKeys.fifteen159.translate(context),
              ),
              Text(
                TKeys.fifteen1510.translate(context),
              ),
            ],
          ),
          const Divider(
            color: Colors.black,
            thickness: 1,
          ),
          Text(
            TKeys.fifteen1511.translate(context),
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 13),
            child: Row(
              children: [
                Text(
                  TKeys.fifteen1512.translate(context),
                  style: TextStyle(fontSize: 10.sp),
                ),
                const SizedBox(width: 8), // قم بتعديل القيمة هنا حسب الحاجة
                GestureDetector(
                  onTap: () {
                    const String url = 'https://www.menofia.edu.eg/ENG/Home/ar';
// ignore: deprecated_member_use
                    launch(url);
                  },
                  child: const Text(
                    'https://www.menofia.edu.eg/ENG/Home/ar',
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
            TKeys.fifteen1513.translate(context),
            style: TextStyle(fontSize: 10.sp),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: () {
                const String url =
                    'https://www.menofia.edu.eg/ENG/View/135823/ar';
                // ignore: deprecated_member_use
                launch(url);
              },
              child: const Text(
                'https://www.menofia.edu.eg/ENG/View/135823/ar',
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


/////////////////////////////
