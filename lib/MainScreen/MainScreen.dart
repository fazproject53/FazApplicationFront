import 'package:faz_application/Models/Methods.dart';
import 'package:faz_application/Models/Variables.dart';
import 'package:faz_application/blog/blogs.dart';
import 'package:faz_application/home/OurWork/OurWork.dart';
import 'package:faz_application/home/Services/Services.dart';
import 'package:faz_application/order/orderPackage.dart';
import 'package:faz_application/order/orderService.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_image_slider/carousel.dart';
import 'package:flutter_image_slider/indicator/Circle.dart';

import '../HomeScreen-Main/AboutUs/about_us_main.dart';
import '../HomeScreen-Main/ContactWithUs/contact_with_us.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool open = false;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBarNoIcon('الرئيسية'),
        floatingActionButton: SpeedDial(
          backgroundColor: yellow,
          overlayColor: Colors.transparent,
          switchLabelPosition: true,
          icon: open? closeIcon: addIcon,
          iconTheme: IconThemeData(color: blackBackground),
          onClose: (){setState(() {
            open = false;
          });},
          onOpen: (){setState(() {
            open = true;
          });},
          children: [
            SpeedDialChild(
                backgroundColor: yellow,
                child: Icon(askPackageIcon),
                label: '       طلب خدمة       ',
                labelBackgroundColor: yellow,
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => orderService()));}
            ),
            SpeedDialChild(
                backgroundColor: yellow,
                child: Icon(askServiceIcon),
                label: '        طلب باقة       ',
                labelBackgroundColor: yellow,
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => orderPackage()));}
            ),
            SpeedDialChild(
                backgroundColor: yellow,
                labelBackgroundColor: yellow,
                label: 'المحادثة المباشرة',
                child: Icon(chatIcon)
            ),
          ],
        ),
        backgroundColor: blackBackground,
        body: SingleChildScrollView(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Container(
          height: 180.h,
          width: 400.w,
          child: Carousel(
              indicatorBarColor: Colors.black.withOpacity(0.2),
              autoScrollDuration: Duration(seconds: 1),
              animationPageDuration: Duration(milliseconds: 400),
              activateIndicatorColor: yellow,
              animationPageCurve: Curves.bounceInOut,
              indicatorBarHeight: 30,
              indicatorHeight: 10,
              indicatorWidth: 10,
              unActivatedIndicatorColor: Colors.grey,
              autoScroll: true,
              // widgets
              items: [
            Container(
            child: Lottie.asset('assets/lottie/backgroundoption4.json'),
        ),
            Container(
              child: Lottie.asset('assets/lottie/backgroundoption2.json'),
            ),
            Container(
              child: Lottie.asset('assets/lottie/backgroundoption1.json'),
            )
            ]
        ),),

          SizedBox(height: 10.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: Container(
                  height:150.h,
                  width: 150.w,
                  decoration: BoxDecoration(color: lightBlack, borderRadius: BorderRadius.circular(15.r) ),
                  child: Column(children: [
                    Padding(
                      padding:  EdgeInsets.only(top: 20.h),
                      child: text(context, 'من نحن', 15, yellow),
                    ),
                    Lottie.asset('assets/lottie/who.json', height: 100.h, width: 100.w),

                  ],),),
                onTap: (){goToPage(context, AboutUsMain());},
              ),
              SizedBox(width: 20.w),
            InkWell(child: Container(
              height:150.h,
              width: 150.w,
             decoration: BoxDecoration(color: lightBlack, borderRadius: BorderRadius.circular(15.r) ),
              child: Column(children: [
                Padding(
                  padding:  EdgeInsets.only(top: 20.h),
                  child: text(context, 'الخدمات', 15, yellow),
                ),
              Lottie.asset('assets/lottie/services.json', height: 100.h, width: 100.w),
            ],),),
              onTap: (){goToPage(context, Services());},
        ),

          ],),
          SizedBox(height: 20.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: Container(
                  height:150.h,
                  width: 150.w,
                  decoration: BoxDecoration(color: lightBlack, borderRadius: BorderRadius.circular(15.r) ),
                  child: Column(children: [
                    Padding(
                      padding:  EdgeInsets.only(top: 20.h),
                      child: text(context, 'اعمالنا', 15, yellow),
                    ),
                    Lottie.asset('assets/lottie/our work.json', height: 100.h, width: 100.w),

                  ],),),
                onTap: (){goToPage(context, OurWork());},
              ),
              SizedBox(width: 20.w),
            InkWell(
              child: Container(
              height:150.h,
              width: 150.w,
              decoration: BoxDecoration(color: lightBlack, borderRadius: BorderRadius.circular(15.r) ),
              child: Column(children: [
                Padding(
                  padding:  EdgeInsets.only(top: 20.h),
                  child: text(context, 'المدونة', 15, yellow),
                ),
                Lottie.asset('assets/lottie/blog.json', height: 100.h, width: 100.w),
              ],),),
              onTap: (){goToPage(context, blogs());},
            ),


          ],),
            SizedBox(height: 20.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  child: Container(
                    height:150.h,
                    width: 150.w,
                    decoration: BoxDecoration(color: lightBlack, borderRadius: BorderRadius.circular(15.r) ),
                    child: Column(children: [
                      Padding(
                        padding:  EdgeInsets.only(top: 20.h),
                        child: text(context, 'الباقات', 15, yellow),
                      ),
                      Lottie.asset('assets/lottie/bundles.json', height: 100.h, width: 100.w),

                    ],),),
                  onTap: (){},
                ),
                SizedBox(width: 20.w),
                InkWell(
                  child: Container(
                  height:150.h,
                  width: 150.w,
                  decoration: BoxDecoration(color: lightBlack, borderRadius: BorderRadius.circular(15.r) ),
                  child: Column(children: [
                    Padding(
                      padding:  EdgeInsets.only(top: 20.h),
                      child: text(context, 'تواصل معنا', 15, yellow),
                    ),
                    Lottie.asset('assets/lottie/contactus.json', height: 100.h, width: 100.w),

                  ],),),
                  onTap: (){
                    goToPage(context, ContactWithUsMain());
                  },
                    ),
              ],),
            SizedBox(height: 50.h,)
        ],),
      ),
      ),
    );
  }
}
