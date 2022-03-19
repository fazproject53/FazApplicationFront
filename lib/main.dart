import 'package:faz_application/MainScreen/MainScreen.dart';
import 'package:faz_application/Models/Methods.dart';
import 'package:faz_application/Models/Variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        designSize: const Size(413, 763),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: () => MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(fontFamily: "Cairo"),
            home: MainScreen()
            //----------------------------------
            ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: blackBackground,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            textFieldIcon(context, 'أدخل عدد الاشخاص المستفيدين', 12, false,
                addIcon, nameControllerUs, (String? value) {
              /// Validation text field
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            }, false),
            SizedBox(
              height: 30.h,
            ),
            textFieldIcon(context, 'أدخل عدد الاشخاص المستفيدين', 12, false,
                addIcon, nameControllerUs, (String? value) {
              /// Validation text field
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            }, false),
            SizedBox(
              height: 40.h,
            ),
            textFieldDesc(
              context,
              'تفاصيل الرسالة',
              12,
              false,
              addIcon,
              nameControllerUs,
              (String? value) {
                /// Validation text field
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            SizedBox(
              height: 40.h,
            ),
            button(text(context, 'اطلب الباقة', 12, blackBackground), () {}),
            SizedBox(
              height: 40.h,
            ),
            gradientContainer(120.h, 40.w,
                text(context, 'اطلب الباقة', 12, white), () {}),
          ],
        ),
      ),
    );
  }
}
