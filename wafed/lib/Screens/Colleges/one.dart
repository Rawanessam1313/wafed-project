import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../t_key.dart';

class one extends StatelessWidget {
  const one({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
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
                SizedBox(height: 50.sp),
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
                          'assets/images/colleges/1.png',
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
                Text(
                  TKeys.one11.translate(context),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  TKeys.one12.translate(context),
                  style: TextStyle(fontSize: 14),
                ),
                const Divider(
                  color: Color.fromARGB(255, 138, 129, 129),
                  thickness: 1,
                ),
                Text(
                  TKeys.one13.translate(context),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                ListView(
                  shrinkWrap: true,
                  children: [
                    Text(
                      TKeys.one14.translate(context),
                    ),
                    Text(
                      TKeys.one15.translate(context),
                    ),
                    Text(
                      TKeys.one16.translate(context),
                    ),
                    Text(
                      TKeys.one17.translate(context),
                    ),
                    Text(
                      TKeys.one18.translate(context),
                    ),
                    Text(
                      TKeys.one19.translate(context),
                    ),
                  ],
                ),
                const Divider(
                  color: Colors.black,
                  thickness: 1,
                ),
                Text(
                  TKeys.one20.translate(context),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.all(2),
                  child: Row(
                    children: [
                      Text(
                        TKeys.one21.translate(context),
                        style: TextStyle(fontSize: 1.sp),
                      ),
                      SizedBox(width: 2),
                      GestureDetector(
                        onTap: () {
                          const String url =
                              'https://www.menofia.edu.eg/ENG/Home/ar';
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
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  TKeys.one22.translate(context),
                  style: TextStyle(fontSize: 10.sp),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10.sp),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
