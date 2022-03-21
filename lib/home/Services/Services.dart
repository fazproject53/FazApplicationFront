// ignore_for_file: file_names

import 'package:faz_application/Models/Methods.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Models/Variables.dart';

class Services extends StatefulWidget {
  const Services({Key? key}) : super(key: key);

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  List<String> title = [
    "تصميم المواقع",
    "تصميم الهوية",
    "محركات البحث",
    "سوشيال ميديا",
    "تطبيقات الجوال"
  ];
  List<String> subtitle = [
    "لدينا خبرة كبيبرة في تصميم المواقع الالكترونية",
    "لدينا خبرة كبيبرة في تصميم المواقع الالكترونية",
    "لدينا خبرة كبيبرة في تصميم المواقع الالكترونية",
    "لدينا خبرة كبيبرة في تصميم المواقع الالكترونية",
    "لدينا خبرة كبيبرة في تصميم المواقع الالكترونية"
  ];
  List<String> imageName = [
    "assets/image/web.jpg",
    "assets/image/identity.jpg",
    "assets/image/search.jpg",
    "assets/image/social.jpg",
    "assets/image/moblie.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: blackBackground,
        appBar: drowAppBar("خدماتنا",context),
        drawer: const Drawer(),
        body: Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 40.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                knowUs(),
                SizedBox(
                  height: 5.h,
                ),
                description(),
                SizedBox(
                  height: 5.h,
                ),
                Expanded(child: services()),

                //
              ],
            ),
          ),
        ));
  }

  Widget knowUs() {
    return text(context, "تعرف علي خدماتنا", 16, white);
  }

  Widget description() {
    return text(
        context,
        "تصميم مواقع الكترونية و تطبيقات للجوال بجودة فائقة و تكلفة اقتصادية منافسة",
        18,
        
        white);
  }

  Widget services() {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, i) {
        return serviceShap(i);
      },
    );
  }

  Widget serviceShap(int index) {
    return SizedBox(
      width: 321.w,
      height: 146.h,
      child: Card(
        color: cardColor,
        child: Column(children: [
          Expanded(
              flex: 2,
              child: ListTile(
                title: Padding(
                  padding:  EdgeInsets.symmetric(vertical: 8.0.h),
                  child: text(context, title[index], 14, white,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                 
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                   
                    text(context, subtitle[index], 12, white),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 24.0.h),
                      child: gradientContainer(89, 30,
                          text(context, "أطلب الخدمة", 12, white), () {}),
                    )
                  ],
                ),
                trailing: SizedBox(
                    width: 64.w,
                    height: 64.h,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(3.0.r),
                      child: Image(
                        image: AssetImage(imageName[index]),
                        fit: BoxFit.cover,
                      ),
                    )),
              )),
        ]),
      ),
    );
  }
}
// Directionality(textDirection: TextDirection.rtl