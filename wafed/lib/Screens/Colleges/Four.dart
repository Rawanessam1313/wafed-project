// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
// ignore: depend_on_referenced_packages, unused_import
import 'package:uni_links/uni_links.dart';
import 'package:flutter/widgets.dart';
import 'package:wafed/Screens/t_key.dart';

class four extends StatelessWidget {
  const four({super.key});

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
                    'assets/images/colleges/4.jpeg',
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
            TKeys.four44.translate(context),
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            TKeys.four45.translate(context),
            style: TextStyle(fontSize: 14),
          ),
          const Divider(
            color: Colors.black,
            thickness: 1,
          ),
          Text(
            TKeys.four46.translate(context),
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          ListView(
            shrinkWrap: true,
            children: [
              Text(
                TKeys.four47.translate(context),
              ),
              Text(
                TKeys.four48.translate(context),
              ),
              Text(
                TKeys.four49.translate(context),
              ),
              Text(
                TKeys.four50.translate(context),
              ),
              Text(
                TKeys.four51.translate(context),
              ),
              Text(
                TKeys.four52.translate(context),
              ),
              Text(
                TKeys.four53.translate(context),
              ),
              Text(
                TKeys.four54.translate(context),
              ),
            ],
          ),
          const Divider(
            color: Colors.black,
            thickness: 1,
          ),
          Text(
            TKeys.four55.translate(context),
            style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 13),
            child: Row(
              children: [
                Text(
                  TKeys.four56.translate(context),
                  style: TextStyle(fontSize: 10.sp),
                ),
                // قم بتعديل القيمة هنا حسب الحاجة

                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      const String url =
                          'https://www.facebook.com/groups/152891235328760/?ref=share&mibextid=I6gGtw';
                      // ignore: deprecated_member_use
                      launch(url);
                    },
                    child: const Text(
                      'https://www.facebook.com/groups/152891235328760/?ref=share&mibextid=I6gGtw',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                )
                //
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
