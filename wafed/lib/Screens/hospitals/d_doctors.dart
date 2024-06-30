import 'dart:ui';

import 'package:flutter/material.dart';

class d_doctors {
  d_doctors({
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

  factory d_doctors.fromJson(Map<String, dynamic> json) => d_doctors(
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

final d = [
  d_doctors(
    id: '1',
    image: 'assets/images/hospital/dentistry.png',
    name: {
      'en': 'Ahmed Osama',
      'ar': 'أحمد أسامة',
    },
    consultation_fee: 150,
    rate: 4.5,
    Address: {
      'en': 'Address: Ahmed Maher street',
      'ar': 'العنوان: شارع أحمد ماهر',
    },
    number: 'number:1226554356',
  ),
  d_doctors(
    id: '2',
    image: 'assets/images/hospital/dentistry.png',
    name: {
      'en': 'Ahmed El Manahely',
      'ar': 'أحمد المناهلي',
    },
    consultation_fee: 120,
    rate: 4.5,
    Address: {
      'en': 'Address: Elmadena Elmanaoura street 5',
      'ar': 'العنوان: شارع المدينة المنورة 5',
    },
    number: 'number:1003192777',
  ),
  d_doctors(
    id: '3',
    image: 'assets/images/hospital/dentistry.png',
    name: {
      'en': 'Ahmed Fathalla Abeid',
      'ar': 'أحمد فتح الله عبيد',
    },
    consultation_fee: 110,
    rate: 4,
    Address: {
      'en': 'Address: Talat Harb',
      'ar': 'العنوان: طلعت حرب',
    },
    number: 'number: 1012986439',
  ),
  d_doctors(
    id: '4',
    image: 'assets/images/hospital/dentistry.png',
    name: {
      'en': 'Ahmed El Mahdy',
      'ar': 'أحمد المهدي',
    },
    consultation_fee: 212,
    rate: 4.8,
    Address: {
      'en': 'Address: Gamal Abdelnasser street 75 (floor 2)',
      'ar': 'العنوان: شارع جمال عبد الناصر 75 (الدور الثاني)',
    },
    number: 'number: 482226067',
  ),
  d_doctors(
    id: '5',
    image: 'assets/images/hospital/dentistry.png',
    name: {
      'en': 'Ahmed Badr',
      'ar': 'أحمد بدر',
    },
    consultation_fee: 112,
    rate: 4.8,
    Address: {
      'en': 'Address: Mohamed Sabry Abo Alm Street 2',
      'ar': 'العنوان: شارع محمد صبري أبو علم 2',
    },
    number: 'number: 482334578',
  ),
  d_doctors(
    id: '6',
    image: 'assets/images/hospital/dentistry.png',
    name: {
      'en': 'Ahmed El Shanawany',
      'ar': 'أحمد الشناوي',
    },
    consultation_fee: 200,
    rate: 4.8,
    Address: {
      'en': 'Address: El Galaa street 65',
      'ar': 'العنوان: شارع الجلاء 65',
    },
    number: 'number: 1090903458',
  ),
];
