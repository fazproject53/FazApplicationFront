///import section 
import 'package:faz_application/order/orderPackage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Models/Methods.dart';
import '../../Models/Variables.dart';



class PackagesMain extends StatelessWidget {
  const PackagesMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: appBar('الباقات', context),
        backgroundColor: blackBackground,
        body: const PackagesHome(),
      ),
    );
  }
}



class PackagesHome extends StatefulWidget {
  const PackagesHome({Key? key}) : super(key: key);

  @override
  _PackagesHomeState createState() => _PackagesHomeState();
}

class _PackagesHomeState extends State<PackagesHome> {

  ///Package Name
  List<String> packageName = [
    "باقة بسيطة",
    "باقة متوسطة",
    "باقة كبيرة",
  ];

  ///Package Price
  List<String> packagePrice = [
    "1200 ر.س",
    "1400 ر.س",
    "1400 ر.س"
  ];

  ///Package Description1
  Widget packageDescription() {
    return text(
        context,
       'تشمل المواقع او التطبيقات التي تحتوي علي',
        14,
        white,
        family: 'DIN Next LT Arabic',);
  }

  ///Package Description2
  Widget packageDescription1() {
    return text(
        context,
        'تشمل المواقع او التطبيقات التي تحتوي علي',
        14,
        white,
        family: 'DIN Next LT Arabic',);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 50.h,

            ),
            ///ListView-> return a Card that contain all info about package
            SizedBox(
              height: 550.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return cardInfoPackage(index);
                },
              ),
            )
          ],
        )
    );
  }

  ///Card Widget
  Widget cardInfoPackage(int index) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 10.w),
        child: Container(
          width: 280.w,
          height: 220.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.r),
            color: cardColor,
          ),
            child: Padding(
              padding: EdgeInsets.only(top: 25.h, right: 15.w, left: 15.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ///packageName
                  text(context, packageName[index], 16, yellow,
                      fontWeight: FontWeight.bold),
                  SizedBox(
                    height: 10.h,
                  ),

                  ///packagePrice
                  text(context, packagePrice[index], 16, white,
                      fontWeight: FontWeight.bold),
                  SizedBox(
                    height: 10.h,
                  ),
                  ///packageDescription
                  packageDescription(),
                  SizedBox(
                    height: 7.h,
                  ),
                  ///packageDescription
                  packageDescription1(),
                  SizedBox(
                    height: 10.h,
                  ),
                  Divider(
                    color: grey,
                    height: 30.h,
                    thickness: 0.6,
                  ),
                  ///
                  Padding(
                    padding: EdgeInsets.only(top: 20.h, right: 20.w, left: 20.w),
                    ///Column to have all info inside
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              child: Icon(
                                  doneIcon,
                                size: 20.sp,
                                color: blackBackground,
                              ),
                              radius: 12.r,
                              backgroundColor: yellow,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            text(context, 'باند ويث غير محدود', 14, white, family: 'DIN Next LT Arabic')
                          ],
                        ),

                        ///---------------------------
                        SizedBox(
                          height: 30.h,
                        ),

                        ///---------------------------
                        Row(
                          children: [
                            CircleAvatar(
                              child: Icon(
                                doneIcon,
                                size: 20.sp,
                                color: blackBackground,
                              ),
                              radius: 12.r,
                              backgroundColor: yellow,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            text(context, 'إستضافة مفتوحة', 14, white, family: 'DIN Next LT Arabic')
                          ],
                        ),

                        ///---------------------------
                        SizedBox(
                          height: 30.h,
                        ),

                        ///---------------------------
                        Row(
                          children: [
                            CircleAvatar(
                              child: Icon(
                                doneIcon,
                                size: 20.sp,
                                color: blackBackground,
                              ),
                              radius: 12.r,
                              backgroundColor: yellow,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            text(context, 'لوحة تحكم باللغة العربية والاجنبية', 14, white, family: 'DIN Next LT Arabic')
                          ],
                        ),

                    ///---------------------------
                    SizedBox(
                      height: 30.h,
                    ),

                    ///---------------------------
                    Row(
                      children: [
                        CircleAvatar(
                          child: Icon(
                            doneIcon,
                            size: 20.sp,
                            color: blackBackground,
                          ),
                          radius: 12.r,
                          backgroundColor: yellow,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        text(context, 'صفحات غير محدودة', 14, white, family: 'DIN Next LT Arabic')
                      ],
                    ),

                    ///---------------------------
                    SizedBox(
                      height: 30.h,
                    ),

                    ///---------------------------
                    Row(
                      children: [
                        CircleAvatar(
                          child: Icon(
                            doneIcon,
                            size: 20.sp,
                            color: blackBackground,
                          ),
                          radius: 12.r,
                          backgroundColor: yellow,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        text(context, 'تصميم ٥ شعارات', 14, white, family: 'DIN Next LT Arabic')

                      ],
                    ),
                        paddingWithTop(
                          15,
                          15,
                          50,
                          button(text(context, 'اطلب الباقة', 12, blackBackground), () {
                            goToPage(context, orderPackage());
                          }),
                        ),

                      ],
                    ),
                  )
                ],
              ),
            ),

        ),

    );
  }
}
