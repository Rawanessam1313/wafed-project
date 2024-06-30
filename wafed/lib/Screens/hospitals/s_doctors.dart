import 'dart:ui';

import 'package:flutter/material.dart';

class s_doctors {
  s_doctors({
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

  factory s_doctors.fromJson(Map<String, dynamic> json) => s_doctors(
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

final s = [
  s_doctors(
    id: '1',
    image: 'assets/images/hospital/doctor_icon.jpeg',
    name: {
      'en': 'Hossam El Naggar ',
      'ar': 'حسام النجار',
    },
    consultation_fee: 150,
    rate: 4.5,
    Address: {
      'en': 'Address: gamal Abdelnasser Street 97',
      'ar': 'العنوان: شارع جمال عبد الناصر 97',
    },
    number: 'number:1099019845',
  ),
  s_doctors(
    id: '2',
    image: 'assets/images/hospital/doctor_icon.jpeg',
    name: {
      'en': 'Doaa Meselhy Afifi',
      'ar': 'دعاء مصلحي عفيفي',
    },
    consultation_fee: 120,
    rate: 4.5,
    Address: {
      'en': 'Address: Elallam Street 2',
      'ar': 'العنوان: شارع علام 2',
    },
    number: 'number:1019030670',
  ),
  s_doctors(
    id: '3',
    image: 'assets/images/hospital/doctor_icon.jpeg',
    name: {
      'en': 'Adel Ali ',
      'ar': 'عادل علي',
    },
    consultation_fee: 110,
    rate: 4,
    Address: {
      'en': 'Address: Talat Harb Street 80',
      'ar': '   العنوان: طلعت حرب شارع 80',
    },
    number: 'number: 1002415157',
  ),
  s_doctors(
    id: '4',
    image: 'assets/images/hospital/doctor_icon.jpeg',
    name: {
      'en': 'Essam Abd Elaziz',
      'ar': 'عصام عبد العزيز ',
    },
    consultation_fee: 212,
    rate: 4.8,
    Address: {
      'en': 'Address:Abd Elmenam Hamza Street 17',
      'ar': 'العنوان: شارع عبد المنعم حمزة 17',
    },
    number: 'number: 1006597727',
  ),
  s_doctors(
    id: '5',
    image: 'assets/images/hospital/doctor_icon.jpeg',
    name: {
      'en': 'Emad Eldeen Ebrahim',
      'ar': 'عماد الدين إبراهيم',
    },
    consultation_fee: 112,
    rate: 4.8,
    Address: {
      'en': 'Address: El warsha Street 4',
      'ar': 'العنوان: شارع الورشة 4',
    },
    number: 'number: 1003614273',
  ),
  s_doctors(
    id: '6',
    image: 'assets/images/hospital/doctor_icon.jpeg',
    name: {
      'en': 'Foad Seliman',
      'ar': 'فؤاد سليمان',
    },
    consultation_fee: 200,
    rate: 4.8,
    Address: {
      'en': 'Address: Ahmed Oraby Street 35 ',
      'ar': 'العنوان: شارع أحمد عرابي 35',
    },
    number: 'number: 1068745530',
  ),
];
