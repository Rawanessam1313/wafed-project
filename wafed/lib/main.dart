import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:wafed/Screens/Apartment_page.dart';
import 'package:wafed/Screens/Welcome_page.dart';
import 'package:wafed/Screens/choose_topic_page.dart';
import 'package:wafed/Screens/home_page.dart';
import 'package:wafed/Screens/hospitals/Internal_page.dart';
import 'package:wafed/Screens/hospitals/hospital_page.dart';
import 'package:wafed/Screens/hospitals/surgery_page.dart';
import 'package:wafed/Screens/log_in_page.dart';
import 'package:wafed/Screens/restaurant/restaurant_page.dart';
import 'package:wafed/generated/l10n.dart';
import 'Screens/Colleges/Colleges_page.dart';
import 'Screens/Complaints_and_Inquiries.dart';
import 'Screens/Entertainement/Entertainement_page.dart';
import 'Screens/Language.dart';
import 'Screens/hospitals/Hospitals_page.dart';
import 'Screens/hospitals/dentistry_page.dart';
import 'localization.dart';

void main() {
  runApp(DevicePreview(builder: (context) => Wafed()));
}

class Wafed extends StatelessWidget {
  Wafed({Key? Key}) : super(key: Key);

  final localizationController = Get.put(LocalizationController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LocalizationController>(
        init: localizationController,
        builder: (LocalizationController controller) {
          return ScreenUtilInit(
            designSize: const Size(360, 690),
            minTextAdapt: true,
            splitScreenMode: true,
            child: MaterialApp(
              routes: {
                'Log_in_Page': (context) => Log_in_Page(),
                'lib/Screens/restaurant/restaurant_page.dart': (context) =>
                    restaurant_Page(),
                'lib/Screens/Hospitals_page.dart': (context) => Hospital_Page(),
                'lib/Screens/hospitals/dentistry_page.dart': (context) =>
                    dentistry_page(),
                'lib/Screens/hospitals/genetics_page.dart': (context) =>
                    genetics_page(),
                'lib/Screens/hospitals/neurology_page.dart': (context) =>
                    neurology_page(),
                'lib/Screens/hospitals/surgery_page.dart': (context) =>
                    surgery_page(),
                'lib/Screens/Entertainement/Entertainement_page.dart':
                    (context) => Entertainement_page(),
                'lib/Screens/Apartment_page.dart': (context) =>
                    Apartment_page(),
                "lib/Screens/Colleges/Colleges_page.dart": (context) =>
                    Colleges_page(),
                "lib/Screens/Complaints_and_Inquiries.dart": (context) =>
                    Complaints_and_Inquiries(),
              },
              builder: DevicePreview.appBuilder,

              debugShowCheckedModeBanner: false,

              locale: controller.currentLanguage != ''
                  ? Locale(controller.currentLanguage, '')
                  : null,

              localeResolutionCallback:
                  LocalizationService.localeResolutionCallBack,
              supportedLocales: LocalizationService.supportedLocales,
              localizationsDelegates: LocalizationService.localizationsDelegate,
              home: homepage(),
              // localizationsDelegates: [
              //   // S.delegate,

              //   GlobalMaterialLocalizations.delegate,
              //   GlobalWidgetsLocalizations.delegate,
              //   GlobalCupertinoLocalizations.delegate,
              // ],
              // supportedLocales: [
              //   Locale("en", ""),
              //   Locale("ar", ""),
              //   // Add more locales as needed
              // ],
              // locale: Locale("en", ""),
              // localeResolutionCallback: (currentLang, supportLang) {
              //   if (currentLang != null) {
              //     for (Locale locale in supportLang) {
              //       if (locale.languageCode == currentLang.languageCode) {
              //         return currentLang;
              //       }
              //     }
              //   }
              //   return supportLang.first;
              // },
            ),
          );
        });
  }
}
