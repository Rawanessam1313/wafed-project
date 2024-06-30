import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:wafed/Screens/Entertainement/Entertainement_page.dart';
import 'package:wafed/Screens/color_extension.dart';
import 'package:wafed/Screens/log_in_page.dart';
import 'package:wafed/Screens/restaurant/restaurant_page.dart';
import 'package:wafed/Screens/t_key.dart';
import 'package:wafed/localization.dart';

class University_Activities_page extends StatelessWidget {
  final List<Map<String, dynamic>> dataArr = [
    {
      "image": "assets/images/entertainement/1.jpg",
      "title": {"en": "football", "ar": "كرة القدم"},
      "color": "FFFFFF",
      "text_color": "FFFFFF",

      "route": "/colleges", // Add route for each image
    },
    {
      "image": "assets/images/entertainement/2.jpeg",
      "title": {"en": "boxing", "ar": "الملاكمة "},
      "color": "FFFFFF",
      "text_color": "FFFFFF",
      "route": "/chatroom", // Add route for each image
    },
    {
      "image": "assets/images/entertainement/3.jpg",
      "title": {"en": "Volley ball", "ar": "الكرة الطائرة "},
      "color": "FFFFFF",
      "text_color": "FFFFFF",
      "route": "lib/Screens/Entertainement/Entertainement_page.dart",
    },
    {
      "image": "assets/images/entertainement/4.jpg",
      "title": {"en": "chess", "ar": " الشطرنج"},
      "color": "FFFFFF",
      "text_color": "FFFFFF",
      "route": "lib/Screens/restaurant/restaurant_page.dart",
    },

    {
      "image": "assets/images/entertainement/5.jpg",
      "title": {"en": "literary club", "ar": " النادي الأدبي"},
      "color": "FFFFFF",
      "text_color": "FFFFFF",
      "route": "lib/Screens/Hospitals_page.dart",
    },
    {
      "image": "assets/images/entertainement/6.jpg",
      "title": {"en": "acting club", "ar": " نادي التمثيل"},
      "color": "FFFFFF",
      "text_color": "FFFFFF",
      "route": "/chatroom",
    },
    {
      "image": "assets/images/entertainement/7.jpg",
      "title": {"en": "acting club", "ar": " فريق الكشافة"},
      "color": "FFFFFF",
      "text_color": "FFFFFF",
      "route": "/chatroom",
    },
    {
      "image": "assets/images/entertainement/8.jpg",
      "title": {"en": "basketball", "ar": " كرة السلة"},
      "color": "FFFFFF",
      "text_color": "FFFFFF",
      "route": "/chatroom",
    },

    // Add more images with routes
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            bottom: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Entertainement_page()),
                          );
                        },
                        icon: Icon(Icons.arrow_back_ios),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Center(
                        child: Text(
                          TKeys.University_Activities.translate(context),
                          style: TextStyle(
                            color: Color.fromARGB(245, 0, 0, 0),
                            fontFamily: 'Merriweather',
                            fontSize: 28.sp,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: MasonryGridView.count(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              itemCount: dataArr.length,
              itemBuilder: (context, index) {
                var height = index % 4 == 0 || index % 4 == 2
                    ? MediaQuery.of(context).size.width * 0.50
                    : MediaQuery.of(context).size.width * 0.50;
                var c0bj = dataArr[index];

                return GestureDetector(
                  onTap: () {
                    // Navigate to different pages based on the route of each image
                    Navigator.pushNamed(context, c0bj["route"]!);
                  },
                  child: Container(
                    height: height,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: HexColor.formHex(c0bj["color"]!),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            c0bj["image"]!,
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(14),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      c0bj["title"][LocalizationService
                                          .currentLocale.languageCode],
                                      maxLines: 2,
                                      style: TextStyle(
                                        color: HexColor.formHex(
                                            c0bj["text_color"]!),
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
