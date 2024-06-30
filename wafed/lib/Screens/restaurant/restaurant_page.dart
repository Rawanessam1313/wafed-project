import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wafed/Screens/choose_topic_page.dart';
import 'package:wafed/Screens/restaurant/restaurant_Detail_Page.dart';
import 'package:wafed/Screens/t_key.dart';

import 'Restaurant_Food .dart';
import 'cafe_Detail_Page.dart';
import 'cafe_Food.dart';

class restaurant_Page extends StatefulWidget {
  @override
  State<restaurant_Page> createState() => _restaurant_PageState();
}

class _restaurant_PageState extends State<restaurant_Page> {
  int indexCategory = 0;

  Widget _currentWidget =
      Container(); // This will hold the current widget to be displayed

  @override
  void initState() {
    super.initState();
    // Set the initial widget
    _currentWidget = gridRestaurant();
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

            search(),
            const SizedBox(height: 30),
            categories(),
            const SizedBox(height: 30),
            _currentWidget, // Display the current widget here
          ],
        ),
      ),
    );
  }

  Widget search() {
    return Container(
      height: 38.sp,
      margin: const EdgeInsets.symmetric(horizontal: 17),
      padding: const EdgeInsets.fromLTRB(16, 2, 6, 2),
      decoration: BoxDecoration(
        color: Color.fromARGB(60, 67, 44, 30),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                hintText: 'search',
                hintStyle: TextStyle(color: Colors.grey[600]),
              ),
            ),
          ),
          Material(
            color: Color.fromARGB(250, 67, 44, 30),
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 60.sp,
                width: 35.sp,
                alignment: Alignment.center,
                child: const Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget categories() {
    List list = [
      TKeys.Restaurant.translate(context),
      TKeys.Cafes.translate(context),
      TKeys.Offers.translate(context)
    ];
    return SizedBox(
      height: 40,
      child: ListView.builder(
        itemCount: list.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                indexCategory = index;
                // Based on the selected category, set the widget to be displayed
                if (index == 0) {
                  _currentWidget = gridRestaurant();
                } else if (index == 1) {
                  _currentWidget =
                      gridcafe(); // Adjust this to show the appropriate widget for cafes
                } else {
                  _currentWidget =
                      Container(); // Adjust this to show the appropriate widget for offers
                }
              });
            },
            child: Container(
              padding: EdgeInsets.fromLTRB(
                index == 0 ? 25 : 25,
                0,
                index == list.length - 1 ? 30 : 30,
                0,
              ),
              alignment: Alignment.center,
              child: Text(
                list[index],
                style: TextStyle(
                  fontSize: 22,
                  color: indexCategory == index
                      ? Color.fromARGB(250, 67, 44, 30)
                      : Colors.grey,
                  fontWeight: indexCategory == index ? FontWeight.bold : null,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget gridRestaurant() {
    return GridView.builder(
      itemCount: dummyRestaurant.length,
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
        Restaurant_Food food = dummyRestaurant[index];
        return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return restaurant_Detail_Page(food: food);
              }));
            },
            child: Container(
              height: 261,
              decoration: BoxDecoration(
                color: Color.fromARGB(51, 67, 44, 30),
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
                            food.image,
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
                          food.name,
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
                              food.rate.toString(),
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

  Widget gridcafe() {
    return GridView.builder(
      itemCount: dummycafe.length,
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
        cafe_Food food = dummycafe[index];
        return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return cafe_Detail_Page(food: food);
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
                            food.image,
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
                          food.name,
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
                              food.rate.toString(),
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
