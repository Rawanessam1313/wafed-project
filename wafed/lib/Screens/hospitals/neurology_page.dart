import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wafed/Screens/choose_topic_page.dart';
import 'package:wafed/Screens/hospitals/d_doctors.dart';

import 'n_doctors.dart';
import 'neurology_detail.dart';

class neurology_page extends StatefulWidget {
  @override
  State<neurology_page> createState() => _neurology_page();
}

class _neurology_page extends State<neurology_page> {
  int indexCategory = 0;

  Widget _currentWidget =
      Container(); // This will hold the current widget to be displayed

  @override
  void initState() {
    super.initState();
    // Set the initial widget
    _currentWidget = gridneurology();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/all/Frame_41-removebg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Choose_Topic_Page()),
                    );
                  },
                  icon: Icon(Icons.arrow_back_ios),
                ),
              ],
            ),
            const SizedBox(height: 30),
            _currentWidget, // Display the current widget here
          ],
        ),
      ),
    );
  }

  Widget gridneurology() {
    return GridView.builder(
      itemCount: n.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(16),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        mainAxisExtent: 261,
      ),
      itemBuilder: (context, index) {
        n_detail dctors = n[index];
        return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return neurology_detail(
                  dctors: dctors,
                );
              }));
            },
            child: Container(
              height: 261,
              decoration: BoxDecoration(
                color: Color.fromARGB(45, 67, 44, 30),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 16),
                      Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(120),
                          child: Image.asset(
                            dctors.image,
                            width: 120,
                            height: 120,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          dctors.name,
                          style: Theme.of(context).textTheme.headline6,
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          children: [
                            const Spacer(),
                            const Icon(Icons.star,
                                color: Colors.amber, size: 18),
                            const SizedBox(width: 4),
                            Text(
                              dctors.rate.toString(),
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                      ),
                    ],
                  ),
                  const Positioned(
                    top: 12,
                    right: 12,
                    child: Icon(Icons.favorite_border, color: Colors.grey),
                  ),
                  const Align(
                    alignment: Alignment.bottomRight,
                    child: Material(
                      color: Color.fromARGB(255, 67, 44, 30),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                      child: InkWell(
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Icon(Icons.add, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ));
      },
    );
  }
}
