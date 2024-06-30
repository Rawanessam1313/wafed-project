import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wafed/Screens/t_key.dart';

class Apartment_page extends StatefulWidget {
  @override
  _ApartmentPageState createState() => _ApartmentPageState();
}

class _ApartmentPageState extends State<Apartment_page> {
  // Variables to store form values
  int numberOfPeople = 1;
  int apartmentCondition = 2000 - 3000;
  int numberOfRooms = 1;
  String details = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/images/all/Frame_41-removebg.png'), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 120.sp,
              ),
              Row(
                children: [
                  Center(
                    child: Expanded(
                      child: Text(
                        TKeys.Form.translate(context),
                        style: TextStyle(
                          color: Color.fromARGB(245, 67, 44, 30),
                          fontFamily: 'Merriweather',
                          fontSize: 28.sp,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.sp,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white.withOpacity(0.8),
                ),
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: TKeys.Number_of_People.translate(context),
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    setState(() {
                      numberOfPeople = int.tryParse(value) ?? 1;
                    });
                  },
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white.withOpacity(0.8),
                ),
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: TKeys.Apartment_condition.translate(context),
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    setState(() {
                      numberOfPeople = int.tryParse(value) ?? 1;
                    });
                  },
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white.withOpacity(0.8),
                ),
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: TKeys.Number_of_Rooms.translate(context),
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    setState(() {
                      numberOfRooms = int.tryParse(value) ?? 1;
                    });
                  },
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white.withOpacity(0.8),
                ),
                padding: EdgeInsets.all(10.0),
                child: DropdownButtonFormField<String>(
                  onChanged: (String? newValue) {
                    setState(() {});
                  },
                  items: <String>[
                    '2000-3000',
                    '3000-4000',
                    '4000-5000',
                    'more than 5000'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  decoration: InputDecoration(
                    labelText: TKeys.Rent.translate(context),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white.withOpacity(0.8),
                ),
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: TKeys.Details.translate(context),
                  ),
                  onChanged: (value) {
                    setState(() {
                      details = value;
                    });
                  },
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Handle form submission here
                  print('Number of People: $numberOfPeople');
                  print('Apartment Condition: $apartmentCondition');
                  print('Number of Rooms: $numberOfRooms');
                  print('Details: $details');
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(245, 67, 44, 30),
                ),
                child: Text(
                  TKeys.Submit.translate(context),
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    // Change the text color here
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
