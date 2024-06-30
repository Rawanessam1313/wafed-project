import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wafed/Screens/Entertainement/Entertainement_page.dart';
import 'package:wafed/Screens/Entertainement/Gomhoria_Sporting%20_Club_page.dart';
import 'package:wafed/Screens/t_key.dart';

class Ghazl_Club_page extends StatelessWidget {
  final List<Map<String, String>> dataArr1 = [
    {
      "image": "assets/images/entertainement/ghazal.png",
      "route": "",
    },
  ];
  final List<Map<String, String>> dataArr = [
    {
      "image": "assets/images/entertainement/gazal1.jpeg",
      "route": "",
    },
    {
      "image": "assets/images/entertainement/gazal2.jpg",
      "route": "",
    },
    {
      "image": "assets/images/entertainement/gazal3.jpeg",
      "route": "",
    },
    {
      "image": "assets/images/entertainement/gazal4.jpeg",
      "route": "",
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Gomhoria_Sporting_Club_page()),
                          );
                        },
                        icon: Icon(Icons.arrow_back_ios),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Entertainement_page()),
                          );
                        },
                        icon: Icon(Icons.arrow_forward_ios),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Center(
                        child: Text(
                          TKeys.Ghazl_Clubs.translate(context),
                          style: TextStyle(
                            color: Color.fromARGB(245, 0, 0, 0),
                            fontFamily: 'Merriweather',
                            fontSize: 24.sp,
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
          SizedBox(
            height: 50,
          ),
          Expanded(
            child: MasonryGridView.count(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
              crossAxisCount: 1,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              itemCount: dataArr1.length,
              itemBuilder: (context, index) {
                var height = MediaQuery.of(context).size.width * 0.65;
                var c0bj = dataArr1[index];

                return GestureDetector(
                  child: Container(
                    height: height,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
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
                        SizedBox(
                          height: 70,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            _launchWebsite(
                                "https://www.facebook.com/p/%D9%86%D8%A7%D8%AF%D9%89-%D8%BA%D8%B2%D9%84-%D8%B4%D8%A8%D9%8A%D9%86-%D8%A7%D9%84%D9%83%D9%88%D9%85-%D9%84%D9%84%D8%A7%D8%B3%D8%AA%D8%AB%D9%85%D8%A7%D8%B1-%D8%A7%D9%84%D8%B1%D9%8A%D8%A7%D8%B6%D9%89-100063737619230/?locale=ar_AR"); // Replace with your website URL
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(99, 255, 255, 255),
                          ),
                          child: Text(
                            TKeys.Ghazl_Clubs.translate(context),
                            style: TextStyle(
                              color: const Color.fromARGB(255, 0, 0, 0),
                              // Change the text color here
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: MasonryGridView.count(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                  child: Container(
                    height: height,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
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

void _launchWebsite(String url) async {
  try {
    await launch(url);
  } catch (e) {
    print('Error launching URL: $e');
  }
}
