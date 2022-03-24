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
import '../HomeScreen-Main/AboutUs/about_us_main.dart';
import '../HomeScreen-Main/ContactWithUs/contact_with_us.dart';
import '../HomeScreen-Main/Packages/packages.dart';
import '../chat/chatRoom.dart';

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
        drawer: drawer(context),
        floatingActionButton: SpeedDial(
          backgroundColor: yellow,
          overlayColor: Colors.transparent,
          switchLabelPosition: true,
          icon: open ? closeIcon : addIcon,
          iconTheme: IconThemeData(color: blackBackground),
          onClose: () {
            setState(() {
              open = false;
            });
          },
          onOpen: () {
            setState(() {
              open = true;
            });
          },
          children: [
            SpeedDialChild(
                backgroundColor: yellow,
                child: Icon(askPackageIcon),
                label: '       طلب خدمة       ',
                labelBackgroundColor: yellow,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => orderService()));
                }),
            SpeedDialChild(
                backgroundColor: yellow,
                child: Icon(askServiceIcon),
                label: '        طلب باقة       ',
                labelBackgroundColor: yellow,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => orderPackage()));
                }),
            SpeedDialChild(
                backgroundColor: yellow,
                labelBackgroundColor: yellow,
                label: 'المحادثة المباشرة',
                child: Icon(chatIcon),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => chatRoom()));
                }),
          ],
        ),
        backgroundColor: blackBackground,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                      height: 180.h,
                      width: MediaQuery.of(context).size.width,
                      color: yellow,
                      child: Image.asset(
                        'assets/image/img.png',
                        height: double.infinity,
                        fit: BoxFit.fill,
                        width: MediaQuery.of(context).size.width,
                      )),
                  text(context, 'فاز لتقنية المعلومات', 22, white)
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    child: Container(
                      height: 150.h,
                      width: 150.w,
                      decoration: BoxDecoration(
                          color: lightBlack,
                          borderRadius: BorderRadius.circular(15.r)),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 20.h),
                            child: text(context, 'من نحن', 15, yellow),
                          ),
                          Lottie.asset('assets/lottie/who.json',
                              height: 100.h, width: 100.w),
                        ],
                      ),
                    ),
                    onTap: () {
                      goToPage(context, AboutUsMain());
                    },
                  ),
                  SizedBox(width: 20.w),
                  InkWell(
                    child: Container(
                      height: 150.h,
                      width: 150.w,
                      decoration: BoxDecoration(
                          color: lightBlack,
                          borderRadius: BorderRadius.circular(15.r)),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 20.h),
                            child: text(context, 'الخدمات', 15, yellow),
                          ),
                          Lottie.asset('assets/lottie/services.json',
                              height: 100.h, width: 100.w),
                        ],
                      ),
                    ),
                    onTap: () {
                      goToPage(context, Services());
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    child: Container(
                      height: 150.h,
                      width: 150.w,
                      decoration: BoxDecoration(
                          color: lightBlack,
                          borderRadius: BorderRadius.circular(15.r)),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 20.h),
                            child: text(context, 'اعمالنا', 15, yellow),
                          ),
                          Lottie.asset('assets/lottie/our work.json',
                              height: 100.h, width: 100.w),
                        ],
                      ),
                    ),
                    onTap: () {
                      goToPage(context, OurWork());
                    },
                  ),
                  SizedBox(width: 20.w),
                  InkWell(
                    child: Container(
                      height: 150.h,
                      width: 150.w,
                      decoration: BoxDecoration(
                          color: lightBlack,
                          borderRadius: BorderRadius.circular(15.r)),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 20.h),
                            child: text(context, 'المدونة', 15, yellow),
                          ),
                          Lottie.asset('assets/lottie/blog.json',
                              height: 100.h, width: 100.w),
                        ],
                      ),
                    ),
                    onTap: () {
                      goToPage(context, blogs());
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    child: Container(
                      height: 150.h,
                      width: 150.w,
                      decoration: BoxDecoration(
                          color: lightBlack,
                          borderRadius: BorderRadius.circular(15.r)),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 20.h),
                            child: text(context, 'الباقات', 15, yellow),
                          ),
                          Lottie.asset('assets/lottie/bundles.json',
                              height: 100.h, width: 100.w),
                        ],
                      ),
                    ),
                    onTap: () {
                      goToPage(context, PackagesMain());
                    },
                  ),
                  SizedBox(width: 20.w),
                  InkWell(
                    child: Container(
                      height: 150.h,
                      width: 150.w,
                      decoration: BoxDecoration(
                          color: lightBlack,
                          borderRadius: BorderRadius.circular(15.r)),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 20.h),
                            child: text(context, 'تواصل معنا', 15, yellow),
                          ),
                          Lottie.asset('assets/lottie/contactus.json',
                              height: 100.h, width: 100.w),
                        ],
                      ),
                    ),
                    onTap: () {
                      goToPage(context, ContactWithUsMain());
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 70.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
