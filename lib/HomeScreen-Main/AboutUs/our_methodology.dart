///import section
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Models/Methods.dart';
import '../../Models/Variables.dart';

class OurMethodologyMain extends StatelessWidget {
  const OurMethodologyMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: appBar('من نحن', context),
        endDrawer: drawer(context),
        backgroundColor: blackBackground,
        body: const OurMethodologyHome(),
      ),
    );
  }
}

class OurMethodologyHome extends StatefulWidget {
  const OurMethodologyHome({Key? key}) : super(key: key);

  @override
  _OurMethodologyHomeState createState() => _OurMethodologyHomeState();
}

class _OurMethodologyHomeState extends State<OurMethodologyHome> {
  Widget title() {
    return text(context, "منهجيتنا", 14, white,);
  }

  Widget subTitle() {
    return text(
        context,
        "نسعى دائما لتقديم الافضل في موقعنا نعتني بعملائنا ونهتم بارائهم فهم مصدر إلهام لأعمالنا الناجحة",
        16,
        white,);
  }

  List<String> methodologyTitle = [
    "رائدة في التطوير",
    "مشروعك محمي",
    "جودة عالية",
    "تصاميم استثنائية",
  ];

  List<IconData> methodologyIcon = [
    pioneeringIcon,
    protectedIcon,
    highQualityIcon,
    uniqueDesignIcon,
  ];

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
            height: 5.h,
          ),
          subTitle(),
          SizedBox(
            height: 30.h,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return cardInfo(index);
              },
            ),
          ),
        ],
      ),
    ));
  }

  Widget cardInfo(int index) {
    return SizedBox(
      width: 300.w,
      height: 175.h,
      child: Card(
        color: cardColor,
        child: Padding(
          padding: EdgeInsets.only(top: 15.h, right: 15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 35.h,
                width: 35.w,
                decoration: BoxDecoration(
                    color: yellow, borderRadius: BorderRadius.circular(8.r)),
                child: Icon(
                  methodologyIcon[index],
                  color: white,
                  size: 23,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              text(context, methodologyTitle[index], 16, yellow,
                  fontWeight: FontWeight.bold),
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: EdgeInsets.only(right: 20.w, left: 50.w),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        text(context, 'اتفاقية المستخدم', 12, white,
                            family: 'DIN Next LT Arabic'),
                        text(context, 'اتفاقية المستخدم', 12, white,
                            family: 'DIN Next LT Arabic'),
                        text(context, 'اتفاقية المستخدم', 12, white,
                            family: 'DIN Next LT Arabic')
                      ],
                    ),

                    ///---------------------------
                    SizedBox(
                      height: 5.h,
                    ),

                    ///---------------------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        text(context, 'اتفاقية المستخدم', 12, white,
                            family: 'DIN Next LT Arabic'),
                        text(context, 'اتفاقية المستخدم', 12, white,
                            family: 'DIN Next LT Arabic'),
                        text(context, 'اتفاقية المستخدم', 12, white,
                            family: 'DIN Next LT Arabic')
                      ],
                    ),

                    ///---------------------------
                    SizedBox(
                      height: 5.h,
                    ),

                    ///---------------------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        text(context, 'اتفاقية المستخدم', 12, white,
                            family: 'DIN Next LT Arabic'),
                        text(context, 'اتفاقية المستخدم', 12, white,
                            family: 'DIN Next LT Arabic'),
                        text(context, 'اتفاقية المستخدم', 12, white,
                            family: 'DIN Next LT Arabic')
                      ],
                    )
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
