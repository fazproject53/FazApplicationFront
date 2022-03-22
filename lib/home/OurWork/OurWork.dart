import 'package:flutter/cupertino.dart';
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
  bool colored = true;
  bool unColored = false;
  List<bool> coloredBottom = [true, false, false, false, false, false];

  bool allBottom = true;
  bool webBottom = false;
  bool idBottom = false;
  bool mobileBottom = false;
  bool socialBottom = false;
  bool searchBottom = false;

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
  }

  @override
  Widget build(BuildContext context) {
    isScreenWide = MediaQuery.of(context).size.width >= 900;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          backgroundColor: blackBackground,
          appBar: appBar("اعمالنا", context),
          endDrawer: drawer(context),
          body: Padding(
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
                          runSpacing: 13.0.h,
                          spacing: 12.0.w,
                          children: [
                          all(),
                           webDesign(),
                           identityDesign(),
                           mobileDevelopment(),
                           socialMedia(),
                           searchEngines()
                          ])),
                ),

                SizedBox(
                  height: 10.h,
                ),
                gridView(),
                //
              ],
            ),
          )),
    );
  }
//------------------------------------------------------------------------

  Widget knowUs() {
    return Align(alignment: Alignment.topRight,child: text(context, "أفكارنا الذكية ومشاريعنا الخلاقة", 16, white));
  }
//------------------------------------------------------------------------

  Widget description() {
    return Align(
        alignment: Alignment.topRight,
      child: text(
          context,
          "عملائنا ثقتهم بنا سر نجاحنا ونحن في شركة فاز نحرص دائما على تقديم افضل خدمة لـ زبائننا",
          16,
          white,
   align: TextAlign.justify
      ),
    );
  }
//------------------------------------------------------------------------

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
//------------------------------------------------------------------------

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
//------------------------------------------------------------------------
  Widget all() {
    return container(
        text(context, title[0], 12, allBottom ? blackBackground : white,
            align: TextAlign.center), () {
      setState(() {
        allBottom = true;
        webBottom = false;
        idBottom = false;
        mobileBottom = false;
        socialBottom = false;
        searchBottom = false;
      });
    },
        width: widgetWidth[0],
        height: 40.h,
        backgroundColor: allBottom ? yellow : transparent);
  }
//------------------------------------------------------------------------

  Widget webDesign() {
    return container(
        text(context, title[1], 12, webBottom ? blackBackground : white,
            align: TextAlign.center), () {
      setState(() {
        allBottom = false;
        webBottom = true;
        idBottom = false;
        mobileBottom = false;
        socialBottom = false;
        searchBottom = false;
      });
    },
        width: widgetWidth[1],
        height: 40.h,
        backgroundColor: webBottom ? yellow : transparent);
  }
//------------------------------------------------------------------------

  Widget identityDesign() {
    return container(
        text(context, title[2], 12, idBottom ? blackBackground : white,
            align: TextAlign.center), () {
      setState(() {
        allBottom = false;
        webBottom = false;
        idBottom = true;
        mobileBottom = false;
        socialBottom = false;
        searchBottom = false;
      });
    },
        width: widgetWidth[2],
        height: 40.h,
        backgroundColor: idBottom ? yellow : transparent);
  }
//------------------------------------------------------------------------

  Widget mobileDevelopment() {
    return container(
        text(context, title[3], 12, mobileBottom ? blackBackground : white,
            align: TextAlign.center), () {
      setState(() {
        allBottom = false;
        webBottom = false;
        idBottom = false;
        mobileBottom = true;
        socialBottom = false;
        searchBottom = false;
      });
    },
        width: widgetWidth[3],
        height: 40.h,
        backgroundColor: mobileBottom ? yellow : transparent);
  }
//------------------------------------------------------------------------

  Widget socialMedia() {
    return container(
        text(context, title[4], 12, socialBottom ? blackBackground : white,
            align: TextAlign.center), () {
      setState(() {
        allBottom = false;
        webBottom = false;
        idBottom = false;
        mobileBottom = false;
        socialBottom = true;
        searchBottom = false;
      });
    },
        width: widgetWidth[4],
        height: 40.h,
        backgroundColor: socialBottom ? yellow : transparent);
  }
//------------------------------------------------------------------------

  Widget searchEngines() {
    return container(
        text(context, title[5], 12, searchBottom ? blackBackground : white,
            align: TextAlign.center), () {
      setState(() {
        allBottom = false;
        webBottom = false;
        idBottom = false;
        mobileBottom = false;
        socialBottom = false;
        searchBottom = true;
      });
    },
        width: widgetWidth[5],
        height: 40.h,
        backgroundColor: searchBottom ? yellow : transparent);
  }


}
