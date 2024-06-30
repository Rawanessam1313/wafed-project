import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wafed/Screens/choose_topic_page.dart';
import 'package:wafed/Screens/color_extension.dart';

import 'package:wafed/Screens/restaurant/restaurant_page.dart';
import 'package:wafed/Screens/t_key.dart';
import 'package:wafed/localization.dart';

class Hospital_Page extends StatefulWidget {
  @override
  State<Hospital_Page> createState() => _Hospital_Page();
}

class _Hospital_Page extends State<Hospital_Page> {
  final List<Map<String, dynamic>> dataArr = [
    {
      "image": "assets/images/hospital/dentistry.png",
      "color": "FFFFFF",
      "title": {"en": "Dentistry", "ar": "طب الأسنان"},
      "route": "lib/Screens/hospitals/dentistry_page.dart",
    },
    {
      "image": "assets/images/hospital/internal.jpeg",
      "color": "FFFFFF",
      "title": {"en": "Internal Medicine ", "ar": "الطب الباطني"},
      "route": "lib/Screens/hospitals/genetics_page.dart",
    },
    {
      "image": "assets/images/hospital/hospital.jpeg",
      "color": "FFFFFF",
      "title": {"en": "Hospitals", "ar": "المستشفيات"},
      "route": "lib/Screens/hospitals/neurology_page.dart",
    },
    {
      "image": "assets/images/hospital/surgery.png",
      "color": "FFFFFF",
      "title": {"en": "Surgery", "ar": "جراحة"},
      "route": "lib/Screens/hospitals/surgery_page.dart",
    },
    // Add more images with routes
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
            flexibleSpace: SafeArea(
              bottom: false,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Choose_Topic_Page()),
                        );
                      },
                      icon: Icon(Icons.arrow_back_ios),
                    ),
                    Text(
                      TKeys.All_medical_specialties.translate(context),
                      style: TextStyle(
                        color: Color.fromARGB(250, 67, 44, 30),
                        fontFamily: 'Merriweather',
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      TKeys.Find_your_doctor.translate(context),
                      style: TextStyle(
                        color: Color.fromARGB(199, 198, 195, 193),
                        fontFamily: 'Merriweather',
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            expandedHeight: 170, // Adjust this according to your UI
          ),
          SliverPadding(
            padding: EdgeInsets.all(10),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 0.7, // Adjusted this to fit the content
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  var currentObject = dataArr[index];

                  return GestureDetector(
                    onTap: () {
                      // Navigate to different pages based on the route of each image
                      Navigator.pushNamed(context, currentObject["route"]!);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: HexColor.formHex(currentObject["color"]!),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            flex: 3,
                            child: Image.asset(
                              currentObject["image"]!,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 10),
                          Flexible(
                            flex: 1,
                            child: Text(
                              currentObject["title"][LocalizationService
                                  .currentLocale.languageCode],
                              maxLines: 2,
                              style: TextStyle(
                                color: Color.fromARGB(199, 0, 0, 0),
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                childCount: dataArr.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
