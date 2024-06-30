// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
// ignore: depend_on_referenced_packages, unused_import
import 'package:uni_links/uni_links.dart';
import 'package:wafed/Screens/t_key.dart';

class seven extends StatelessWidget {
  const seven({Key? key}) : super(key: key);

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
                    'assets/images/colleges/7.png',
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
          Text(
            TKeys.seven77.translate(context),
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            TKeys.seven78.translate(context),
            style: TextStyle(fontSize: 14),
          ),
          const Divider(
            color: Colors.black,
            thickness: 1,
          ),
          Text(
            TKeys.seven79.translate(context),
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          GridView(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 15,
            ),
            children: [
              Text(
                TKeys.seven80.translate(context),

                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold), // تحديد حجم النص هنا
              ),
              Text(
                TKeys.seven801.translate(context),
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold), // تحديد حجم النص هنا
              ),
              Text(
                TKeys.seven802.translate(context),
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold), // تحديد حجم النص هنا
              ),
              Text(
                TKeys.seven803.translate(context),
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold), // تحديد حجم النص هنا
              ),
              Text(
                TKeys.seven804.translate(context),

                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold), // تحديد حجم النص هنا
              ),
              Text(
                TKeys.seven805.translate(context),
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold), // تحديد حجم النص هنا
              ),
              // باقي العناصر أيضًا
              Text(
                TKeys.seven806.translate(context),
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold), // تحديد حجم النص هنا
              ),
              Text(
                TKeys.seven807.translate(context),

                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold), // تحديد حجم النص هنا
              ),
              Text(
                TKeys.seven808.translate(context),
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold), // تحديد حجم النص هنا
              ),
              Text(
                TKeys.seven809.translate(context),

                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold), // تحديد حجم النص هنا
              ),
              Text(
                TKeys.seven8010.translate(context),

                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold), // تحديد حجم النص هنا
              ),
              Text(
                TKeys.seven8011.translate(context),

                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold), // تحديد حجم النص هنا
              ),
              Text(
                TKeys.seven8012.translate(context),

                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold), // تحديد حجم النص هنا
              ),
              Text(
                TKeys.seven8013.translate(context),
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold), // تحديد حجم النص هنا
              ),
              Text(
                TKeys.seven8014.translate(context),
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold), // تحديد حجم النص هنا
              ),
              Text(
                TKeys.seven8015.translate(context),
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold), // تحديد حجم النص هنا
              ),
              Text(
                TKeys.seven8016.translate(context),
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold), // تحديد حجم النص هنا
              ),
              Text(
                TKeys.seven8017.translate(context),
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold), // تحديد حجم النص هنا
              ),
              Text(
                TKeys.seven8018.translate(context),
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold), // تحديد حجم النص هنا
              ),
              Text(
                TKeys.seven8019.translate(context),
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold), // تحديد حجم النص هنا
              ),
              Text(
                TKeys.seven8020.translate(context),
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold), // تحديد حجم النص هنا
              ),
              Text(
                TKeys.seven8021.translate(context),
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold), // تحديد حجم النص هنا
              ),
              Text(
                TKeys.seven8022.translate(context),
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold), // تحديد حجم النص هنا
              ),
              Text(
                TKeys.seven8023.translate(context),
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold), // تحديد حجم النص هنا
              ),

              // باقي العناصر أيضًا
            ],
          ),
          const Divider(
            color: Colors.black,
            thickness: 1,
          ),
          Text(
            TKeys.seven81.translate(context),
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13),
            child: Row(
              children: [
                Text(
                  TKeys.seven82.translate(context),
                  style: TextStyle(fontSize: 10.sp),
                ),
                const SizedBox(width: 8), // قم بتعديل القيمة هنا حسب الحاجة
                GestureDetector(
                  onTap: () {
                    const String url = 'http://mu.menofia.edu.eg/med/Home/ar';
// ignore: deprecated_member_use
                    launch(url);
                  },
                  child: const Text(
                    'http://mu.menofia.edu.eg/med/Home/ar',
                    style: TextStyle(
                      fontSize: 10,
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
            TKeys.seven83.translate(context),
            style: TextStyle(fontSize: 10.sp),
          ),
          Padding(
            padding: const EdgeInsets.only(
                right: 10), // Adjust the value of left as needed
            child: GestureDetector(
              onTap: () {
                const String url =
                    'https://www.menofia.edu.eg/ENG/View/135823/ar';
                // ignore: deprecated_member_use
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
        ]),
      ),
    );
  }
}


/////////////////////////////




    

