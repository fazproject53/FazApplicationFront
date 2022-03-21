import 'package:faz_application/Models/Methods.dart';
import 'package:faz_application/Models/Variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class blogDetails extends StatefulWidget {
  @override
  State<blogDetails> createState() => _blogDetailsState();
}

class _blogDetailsState extends State<blogDetails> {

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: drowAppBar('تفاصيل المدونة'),
        backgroundColor: blackBackground,
        body: SingleChildScrollView(child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h,),
            Container(
              height: 250.h,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Image.asset('assets/image/blog.png',height: double.infinity, fit: BoxFit.fill,),
                  Padding(
                    padding: EdgeInsets.only(bottom: 3.0.h, right: 10.w),
                    child: Row(
                      children: [
                        Icon(timeIcon, color: yellow,),
                        SizedBox(width: 10.w,),
                        text(context, 'June 2, 2017', 19, white),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20.h,),
            padding(
              15.w,15.w,  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  text(context, 'الحقيقة المثبتة', 26, white, family: 'DIN Next LT Arabic'),
                  text(context, 'هنا دائما تاتي مرحلة التصمم في المرتبة الاول هنا دائما تاتي مرحلة التصمم في المرتبة الاول هنا دائما تاتي مرحلة التصمم في'
                      ' المرتبة الاول هنا دائما تاتي مرحلة التصمم في المرتبة الاول هنا دائما تاتي مرحلة التصمم في المرتبة الاول', 20, white, family: 'DIN Next LT Arabic', align: TextAlign.justify),
                ],
              ),
            )
          ],),

        ),
      ),
    );
  }
}
