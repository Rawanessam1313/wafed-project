import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
// ignore: depend_on_referenced_packages, unused_import
import 'package:uni_links/uni_links.dart';
import 'package:wafed/Screens/t_key.dart';

class twelve12 extends StatelessWidget {
  const twelve12({Key? key}) : super(key: key);

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
                    'assets/images/colleges/13.png',
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
            TKeys.twelve12.translate(context),
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            TKeys.twelve121.translate(context),
            style: TextStyle(fontSize: 14),
          ),
          const Divider(
            color: Colors.black,
            thickness: 1,
          ),
          Text(
            TKeys.twelve122.translate(context),
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          ListView(
            shrinkWrap: true,
            children: [
              Text(
                TKeys.twelve123.translate(context),
              ),
              Text(TKeys.twelve124.translate(context)),
              Text(TKeys.twelve125.translate(context)),
              Text(TKeys.twelve126.translate(context)),
            ],
          ),
          const Divider(
            color: Colors.black,
            thickness: 1,
          ),
          Text(
            TKeys.twelve127.translate(context),
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 13),
            child: Row(
              children: [
                Text(
                  TKeys.twelve128.translate(context),
                  style: TextStyle(fontSize: 10.sp),
                ),
                const SizedBox(width: 8),
                GestureDetector(
                  onTap: () {
                    const String url = 'http://mu.menofia.edu.eg/fci/Home/ar  ';
// ignore: deprecated_member_use
                    launch(url);
                  },
                  child: const Text(
                    'http://mu.menofia.edu.eg/fci/Home/ar',
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
            TKeys.twelve129.translate(context),
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
