import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Models/Methods.dart';
import '../../Models/Variables.dart';

class OurWork extends StatefulWidget {
  const OurWork({Key? key}) : super(key: key);

  @override
  _OurWorkState createState() => _OurWorkState();
}

class _OurWorkState extends State<OurWork> {
  bool? isScreenWide;
  List<Widget> bouttoms = [];
  List<String> title = [
    "الكل",
    "تصميم المواقع",
    "تصميم الهوية",
    "الجوال",
    "سوشيال ميديا",
    "محركات البحث"
  ];
  List<double> widgetWidth = [50, 109, 97, 50, 98, 82];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    bottomsShape();
  }

  @override
  Widget build(BuildContext context) {
    isScreenWide = MediaQuery.of(context).size.width >= 900;
    return Scaffold(
        backgroundColor: blackBackground,
        appBar: drowAppBar("اعمالنا"),
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
                  height: 15.h,
                ),
                Expanded(
                  child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: Wrap(
                          runSpacing: 13.0.h, spacing: 12.0.w, children: bouttoms)),
                ),

                SizedBox(
                  height: 10.h,
                ),
                gridView(),
                //
              ],
            ),
          ),
        ));
  }

  Widget knowUs() {
    return text(context, "أفكارنا الذكية ومشاريعنا الخلاقة", 16, white);
  }

  Widget description() {
    return text(
        context,
        "عملائنا ثقتهم بنا سر نجاحنا ونحن في شركة فاز نحرص دائما على تقديم افضل خدمة لـ زبائننا",
        18,
        white);
  }

  Widget gridView() {
    return Expanded(
      flex: 4,
      child: GridView.builder(
          itemCount: 6,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, //عدد العناصر في كل صف
              crossAxisSpacing: 16.h, // المسافات الراسية
              childAspectRatio: 0.85, //حجم العناصر
              mainAxisSpacing: 16.w //المسافات الافقية

              ),
          itemBuilder: (context, i) {
            return viewCard();
          }),
    );
  }

  Widget viewCard() {
    return Card(
        elevation: 10,
        color: cardColor,
        child: Container(
          decoration: BoxDecoration(
            color: cardColor,
            borderRadius: BorderRadius.all(Radius.circular(7.r)),
            image: const DecorationImage(
              image: AssetImage("assets/image/ourWork.jpg"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
            ),
          ),

        ));
  }

  bottomsShape() {
    for (int i = 0; i < title.length; i++) {
      bouttoms.add(container(
        text(context, title[i], 12, white, align: TextAlign.center),
        () {},
        width: widgetWidth[i],
        height: 40.h,

      ));
    }
  }
}
