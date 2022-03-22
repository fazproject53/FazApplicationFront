import 'package:faz_application/MainScreen/MainScreen.dart';
import 'package:faz_application/Models/Methods.dart';
import 'package:faz_application/Models/Variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'HomeScreen-Main/ContactWithUs/contact_with_us.dart';
import 'home/IntroductionScreen/IntroductionScreen.dart';
import 'home/Services/Services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: ScreenUtilInit(
        designSize: const Size(375, 816),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: () => MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              fontFamily: "Cairo",
              backgroundColor: blackBackground,
            ),
            home: Introduction()
            //----------------------------------
            ),
      ),
    );
  }
}

