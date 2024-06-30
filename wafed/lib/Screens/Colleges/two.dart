import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:uni_links/uni_links.dart';
import 'package:wafed/Screens/t_key.dart';

class two extends StatelessWidget {
  const two({Key? key}) : super(key: key);

  get child => null;

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
                    'assets/images/colleges/2.png',
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
            TKeys.two22.translate(context),
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            TKeys.two23.translate(context),
            style: TextStyle(fontSize: 14),
          ),
          const Divider(
            color: Colors.black,
            thickness: 1,
          ),
          Text(
            TKeys.two24.translate(context),
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
                TKeys.two25.translate(context),
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              ),
              Text(
                TKeys.two26.translate(context),
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold), // تحديد حجم النص هنا
              ),
              Text(
                TKeys.two27.translate(context),
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold), // تحديد حجم النص هنا
              ),
              Text(
                TKeys.two28.translate(context),
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold), // تحديد حجم النص هنا
              ),
              Text(
                TKeys.two29.translate(context),
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold), // تحديد حجم النص هنا
              ),
              Text(
                TKeys.two30.translate(context),
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold), // تحديد حجم النص هنا
              ),
              // باقي العناصر أيضًا
              Text(
                TKeys.two31.translate(context),
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold), // تحديد حجم النص هنا
              ),
              Text(
                TKeys.two32.translate(context),

                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold), // تحديد حجم النص هنا
              ),
              Text(
                TKeys.two33.translate(context),

                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold), // تحديد حجم النص هنا
              ),
              Text(
                TKeys.two34.translate(context),

                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold), // تحديد حجم النص هنا
              ),
              Text(
                TKeys.two35.translate(context),

                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold), // تحديد حجم النص هنا
              ),
              Text(
                TKeys.two36.translate(context),

                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold), // تحديد حجم النص هنا
              ),
              Text(
                TKeys.two37.translate(context),

                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold), // تحديد حجم النص هنا
              ),
              Text(
                TKeys.two38.translate(context),
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold), // تحديد حجم النص هنا
              ),
              Text(
                TKeys.two39.translate(context),
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold), // تحديد حجم النص هنا
              ),
            ],
          ),

          const Divider(
            color: Colors.black,
            thickness: 1,
          ),
          Text(
            TKeys.two40.translate(context),
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 13),
            child: Row(
              children: [
                Text(
                  TKeys.two41.translate(context),
                  style: TextStyle(fontSize: 10.sp),
                ),
                const SizedBox(width: 8), // قم بتعديل القيمة هنا حسب الحاجة
                GestureDetector(
                  onTap: () {
                    const String url = 'https://www.menofia.edu.eg/ENG/Home/ar';

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
            TKeys.two42.translate(context),
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
