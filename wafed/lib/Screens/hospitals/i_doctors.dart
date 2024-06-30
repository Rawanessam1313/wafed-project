import 'dart:ui';

import 'package:flutter/material.dart';

class i_doctors {
  i_doctors({
    required this.id,
    required this.image,
    required this.name,
    required this.consultation_fee,
    required this.rate,
    required this.Address,
    required this.number,
  });

  String id;
  String image;
  Map<String, String> name;
  int consultation_fee;
  double rate;
  Map<String, String> Address;
  String number;

  factory i_doctors.fromJson(Map<String, dynamic> json) => i_doctors(
        id: json["id"],
        image: json["image"],
        name: Map<String, String>.from(json["name"]),
        consultation_fee: json["consultation_fee"],
        rate: json["rate"].toDouble(),
        Address: Map<String, String>.from(json["Address"]),
        number: json["number"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
        "name": name,
        "consultation_fee": consultation_fee,
        "rate": rate,
        "Address": Address,
        "number": number,
      };

  String getLocalizedName(BuildContext context) {
    Locale locale = Localizations.localeOf(context);
    return name[locale.languageCode] ?? name['en']!;
  }

  String getLocalizedAddress(BuildContext context) {
    Locale locale = Localizations.localeOf(context);
    return Address[locale.languageCode] ?? Address['en']!;
  }
}

final i = [
  i_doctors(
    id: '1',
    image: 'assets/images/hospital/doctor_icon.jpeg',
    name: {
      'en': 'Ahmed Ragb ',
      'ar': 'أحمد رجب',
    },
    consultation_fee: 150,
    rate: 4.5,
    Address: {
      'en': 'Address:Bank Masr  street 5 ',
      'ar': 'العنوان:بنك مصر شارع 5',
    },
    number: 'number:1014410261',
  ),
  i_doctors(
    id: '2',
    image: 'assets/images/hospital/doctor_icon.jpeg',
    name: {
      'en': 'Ahmed Attia ',
      'ar': 'أحمد عطية',
    },
    consultation_fee: 120,
    rate: 4.5,
    Address: {
      'en': 'Address: El malaab street 1 , Doctors Tower',
      'ar': ' العنوان: شارع الملعب 1، برج الأطباء',
    },
    number: 'number:1099016021',
  ),
  i_doctors(
    id: '3',
    image: 'assets/images/hospital/doctor_icon.jpeg',
    name: {
      'en': 'Tawfik Latef',
      'ar': 'توفيق لطيف',
    },
    consultation_fee: 110,
    rate: 4,
    Address: {
      'en': 'Address: El Shohada Street 28',
      'ar': 'العنوان:  شارع الشهداء 28',
    },
    number: 'number: 482318466',
  ),
  i_doctors(
    id: '4',
    image: 'assets/images/hospital/doctor_icon.jpeg',
    name: {
      'en': 'Reda El Gendy',
      'ar': 'رضا الجندي ',
    },
    consultation_fee: 212,
    rate: 4.8,
    Address: {
      'en': 'Address: Gamal Abdelnasser street 75 (floor 2)',
      'ar': 'العنوان: شارع جمال عبد الناصر 75 (الدور الثاني)',
    },
    number: 'number: 1223335880',
  ),
  i_doctors(
    id: '5',
    image: 'assets/images/hospital/doctor_icon.jpeg',
    name: {
      'en': 'Saad Seliman ',
      'ar': 'سعد سليمان ',
    },
    consultation_fee: 112,
    rate: 4.8,
    Address: {
      'en': 'Address:Sharaf Square ',
      'ar': ' ميدان شرف',
    },
    number: 'number: 482223754',
  ),
  i_doctors(
    id: '6',
    image: 'assets/images/hospital/doctor_icon.jpeg',
    name: {
      'en': 'Adel El Saiedy',
      'ar': 'عادل السعيدي',
    },
    consultation_fee: 200,
    rate: 4.8,
    Address: {
      'en': 'Address:Gamal Abdelnasser Street',
      'ar': 'العنوان: شارع جمال عبد الناصر',
    },
    number: 'number: 482221124',
  ),
];
