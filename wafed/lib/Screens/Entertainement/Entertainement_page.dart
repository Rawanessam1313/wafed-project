import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:wafed/Screens/choose_topic_page.dart';
import 'package:wafed/Screens/t_key.dart';

import 'Menoufia_CityClubs_page.dart';
import 'University_Activities_page.dart';

class Entertainement_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image:
                  AssetImage("assets/images/entertainement/Entertainement.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: ListView(
              children: [
                SizedBox(height: 170.sp),
                ButtonTheme(
                    minWidth: 300.0,
                    height: 300.0,
                    child: OutlinedButton(
                      child: Text(
                        TKeys.University_Activities.translate(context),
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontFamily: 'Graduate',
                          fontWeight: FontWeight.w900,
                          fontSize: 25.sp,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.black, width: 4),
                          padding: EdgeInsets.all(10),
                          minimumSize: Size(100, 100)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  University_Activities_page()),
                        );
                      },
                    )),
                SizedBox(
                  height: 225,
                ),
                Center(
                    child: OutlinedButton(
                  child: Text(
                    TKeys.Menoufia_Clubs.translate(context),
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontFamily: 'Graduate',
                      fontWeight: FontWeight.w900,
                      fontSize: 25.sp,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.black, width: 4),
                      padding: EdgeInsets.only(
                        left: 10.sp,
                        right: 10.sp,
                      ),
                      minimumSize: Size(100, 100)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Menoufia_CityClubs_page()),
                    );
                  },
                )),
              ],
            ),
          ),
        ));
  }
}
