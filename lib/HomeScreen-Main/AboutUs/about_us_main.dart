///import section
import 'package:faz_application/HomeScreen-Main/AboutUs/faz_in_line.dart';
import 'package:faz_application/HomeScreen-Main/AboutUs/our_methodology.dart';
import 'package:faz_application/HomeScreen-Main/AboutUs/timeline.dart';
import 'package:faz_application/HomeScreen-Main/AboutUs/user_contract.dart';
import 'package:faz_application/Models/Variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Models/Methods.dart';

class AboutUsMain extends StatelessWidget {
  const AboutUsMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: appBar('من نحن', context),
        endDrawer: drawer(context),
        backgroundColor: blackBackground,
        body: const AboutUsHome(),
      ),
    );
  }
}

class AboutUsHome extends StatefulWidget {
  const AboutUsHome({Key? key}) : super(key: key);

  @override
  _AboutUsHomeState createState() => _AboutUsHomeState();
}

class _AboutUsHomeState extends State<AboutUsHome> {
  Widget title() {
    return text(context, "موقع فاز", 14, white,);
  }

  Widget subTitle() {
    return text(
        context,
        "نحن شركة فاز لتصميم أرقى و أفضل مواقع الأنترنت المكونة من مجموعة من أهم مصممين و مبرمجين المواقع",
        16,
        white,);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 40.h, right: 15.w, left: 15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            title(),
            SizedBox(
              height: 10.h,
            ),
            subTitle(),
            ///Row 1
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ///Faz in lines
                InkWell(
                  child: Container(
                    margin: EdgeInsets.only(top: 50.h),
                    height: 160.h,
                    width: 160.w,
                    decoration: BoxDecoration(
                        color: cardColor,
                        borderRadius: BorderRadius.circular(15.r)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10.h,
                        ),
                        text(context, 'فاز في سطور', 16, yellow, fontWeight: FontWeight.bold),
                        SizedBox(
                          height: 5.h,
                        ),
                        Image.asset('assets/image/FazInLine.png', height: 105.h, width: 180.w,),

                      ],
                    ),
                  ),
                  onTap: () {
                    goToPage(context, FazInLineMain());

                  },
                ),
                ///SizedBox
                SizedBox(
                  width: 10.w,
                ),
                ///Methodology
                InkWell(
                  child: Container(
                    margin: EdgeInsets.only(top: 50.h),
                    height: 160.h,
                    width: 160.w,
                    decoration: BoxDecoration(
                        color: cardColor,
                        borderRadius: BorderRadius.circular(20.r)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10.h,
                        ),
                        text(context, 'منهجيتنا', 16, yellow, fontWeight: FontWeight.bold),
                        SizedBox(
                          height: 5.h,
                        ),
                        Image.asset('assets/image/Methodology.png', height: 105.h, width: 180.w,),
                      ],
                    ),
                  ),
                  onTap: () {
                    goToPage(context, OurMethodologyMain());
                  },
                ),
              ],
            ),

            ///Row 2
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ///User Contract
                InkWell(
                  child: Container(
                    margin: EdgeInsets.only(top: 20.h),
                    height: 160.h,
                    width: 160.w,
                    decoration: BoxDecoration(
                        color: cardColor,
                        borderRadius: BorderRadius.circular(15.r)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10.h,
                        ),
                        text(context, 'اتفاقية المستخدم', 16, yellow, fontWeight: FontWeight.bold),
                        SizedBox(
                          height: 5.h,
                        ),
                        Image.asset('assets/image/UserContract.png', height: 105.h, width: 180.w,),

                      ],
                    ),
                  ),
                  onTap: () {
                    goToPage(context, UserContractMain());
                  },
                ),
                SizedBox(
                  width: 10.w,
                ),
                ///Timeline
                InkWell(
                  child: Container(
                    margin: EdgeInsets.only(top: 20.h),
                    height: 160.h,
                    width: 160.w,
                    decoration: BoxDecoration(
                        color: cardColor,
                        borderRadius: BorderRadius.circular(15.r)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10.h,
                        ),
                        text(context, 'الية العمل', 16, yellow, fontWeight: FontWeight.bold),
                        SizedBox(
                          height: 5.h,
                        ),
                        Image.asset('assets/image/Timeline.png', height: 105.h, width: 180.w,),
                      ],
                    ),
                  ),
                  onTap: () {
                    goToPage(context, TimelineMain());
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
