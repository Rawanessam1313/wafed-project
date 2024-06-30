import 'dart:ui';

import 'package:flutter/material.dart';

class h_doctors {
  h_doctors({
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

  factory h_doctors.fromJson(Map<String, dynamic> json) => h_doctors(
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

final h = [
  h_doctors(
    id: '1',
    image: 'assets/images/hospital/hospital.jpeg',
    name: {
      'en': 'Shebin El Koum teaching Hospita',
      'ar': 'مستشفى تعليم شبين الكوم',
    },
    consultation_fee: 150,
    rate: 4.5,
    Address: {
      'en':
          'Address:Gamal Abdel Nasser St, Qism Shebeen El-Kom, Shibin el Kom, Menofia Governorate ',
      'ar':
          'عنوان: شارع جمال عبد الناصر، قسم شبين الكوم، شبين الكوم، محافظة المنوفية',
    },
    number: 'number:6132703',
  ),
  h_doctors(
    id: '2',
    image: 'assets/images/hospital/hospital.jpeg',
    name: {
      'en': 'El-Dorah  Hospital',
      'ar': 'مستشفى الدره ',
    },
    consultation_fee: 120,
    rate: 4.5,
    Address: {
      'en':
          'Address:  Qism Shebeen El-Kom, Shibin el Kom, Menofia Governorate ',
      'ar': 'العنوان:قسم شبين الكوم، شبين الكوم، محافظة المنوفية ',
    },
    number: 'number:6132602',
  ),
  h_doctors(
    id: '3',
    image: 'assets/images/hospital/hospital.jpeg',
    name: {
      'en': 'Elmawadah Hospital',
      'ar': 'مستشفى المودة',
    },
    consultation_fee: 110,
    rate: 4,
    Address: {
      'en':
          'Address: Saad Zaghloul , Al Meseilhah, Shibin el Kom, Menofia Governorate',
      'ar': 'العنوان:شارع سعد زغلول، المسيلحة، شبين الكوم، محافظة المنوفية',
    },
    number: 'number: 6132376',
  ),
  h_doctors(
    id: '4',
    image: 'assets/images/hospital/hospital.jpeg',
    name: {
      'en': 'University Hospital Specialist Shebeen',
      'ar': 'مستشفى جامعي متخصص بشبين',
    },
    consultation_fee: 212,
    rate: 4.8,
    Address: {
      'en':
          'Address: Al Maxim Rd, Qism Shebeen El-Kom, Shibin el Kom, Menofia Governorate ',
      'ar': 'العنوان:شارع المكسيم، قسم شبين الكوم، شبين الكوم، محافظة المنوفية',
    },
    number: 'number: 6132720',
  ),
  h_doctors(
    id: '5',
    image: 'assets/images/hospital/hospital.jpeg',
    name: {
      'en': ' Egyptian Red Crescent Hospital',
      'ar': 'مستشفى الهلال الأحمر المصري ',
    },
    consultation_fee: 112,
    rate: 4.8,
    Address: {
      'en': 'Address:  Qism Shebeen El-Kom, Shibin el Kom, Menofia Governorate',
      'ar': 'العنوان: قسم شبين الكوم، شبين الكوم، محافظة المنوفية',
    },
    number: 'number: 6131160',
  ),
];
