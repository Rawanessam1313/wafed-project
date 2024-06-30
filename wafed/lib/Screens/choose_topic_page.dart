import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:wafed/Screens/color_extension.dart';
import 'package:wafed/Screens/log_in_page.dart';
import 'package:wafed/Screens/restaurant/restaurant_page.dart';
import 'package:wafed/Screens/t_key.dart';
import 'package:wafed/localization.dart';

class Choose_Topic_Page extends StatelessWidget {
  final List<Map<String, dynamic>> dataArr = [
    {
      "image": "assets/images/topic/colleges.png",
      "title": {"en": "Colleges", "ar": "الكليات"},
      "color": "FFFFFF",
      "text_color": "FFECCC",
      "route": "lib/Screens/Colleges/Colleges_page.dart",
    },
    {
      "image": "assets/images/topic/chatroom.png",
      "title": {"en": "ChatRoom", "ar": "الغرفة الدردشة"},
      "color": "FFFFFF",
      "text_color": "FEF9F3",
      "route": "/chatroom",
    },
    {
      "image": "assets/images/topic/entertainement.png",
      "title": {"en": "Entertainement", "ar": "الترفيه"},
      "color": "FFFFFF",
      "text_color": "FFFFFF",
      "route": "lib/Screens/Entertainement/Entertainement_page.dart",
    },
    {
      "image": "assets/images/topic/food.png",
      "title": {"en": "Food", "ar": "الطعام"},
      "color": "FFFFFF",
      "text_color": "000000",
      "route": "lib/Screens/restaurant/restaurant_page.dart",
    },

    {
      "image": "assets/images/topic/hospital.png",
      "title": {"en": "Hospital", "ar": "المستشفى"},
      "color": "FFFFFF",
      "text_color": "FFECCC",
      "route": "lib/Screens/Hospitals_page.dart",
    },
    {
      "image": "assets/images/topic/apartment.png",
      "title": {"en": "Apartment", "ar": "السكن"},
      "color": "FFFFFF",
      "text_color": "FFFFFF",
      "route": "lib/Screens/Apartment_page.dart",
    },
    {
      "image": "assets/images/topic/for complaints and inquiries (2).jpg",
      "title": {"en": "Complaints and Inquiries", "ar": "الشكاوى والاستفسارات"},
      "color": "FFFFFF",
      "text_color": "FFFFFF",
      "route": "lib/Screens/Complaints_and_Inquiries.dart",
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
                                builder: (context) => Log_in_Page()),
                          );
                        },
                        icon: Icon(Icons.arrow_back_ios),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          TKeys.Choose_Topic1.translate(context),
                          style: TextStyle(
                            color: Color.fromARGB(245, 67, 44, 30),
                            fontFamily: 'Merriweather',
                            fontSize: 28.sp,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    TKeys.Choose_Topic2.translate(context),
                    style: TextStyle(
                      color: Color.fromARGB(200, 67, 44, 30),
                      fontFamily: 'Merriweather',
                      fontSize: 26.sp,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    TKeys.Choose_Topic3.translate(context),
                    style: TextStyle(
                      color: Color.fromARGB(199, 198, 195, 193),
                      fontFamily: 'Merriweather',
                      fontSize: 20.sp,
                    ),
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
                    ? MediaQuery.of(context).size.width * 0.55
                    : MediaQuery.of(context).size.width * 0.46;
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
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
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
