import 'package:faz_application/MainScreen/MainScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../Models/Methods.dart';
import '../../Models/Variables.dart';
import 'Intro1.dart';
import 'Intro2.dart';
import 'Intro3.dart';

class Introduction extends StatefulWidget {
  const Introduction({Key? key}) : super(key: key);

  @override
  _IntroductionState createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  PageController pageController = PageController();
  int selectedIndex = 0;
  List<Widget> pag = [Intro1(), Intro2(), Intro3()];

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(initialPage: selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: blackBackground,
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 50.h,
              ),
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18.0.w),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              child: InkWell(
                                onTap:(){
                                  goToPage(context, MainScreen());
                                }

                      ,
                                child: text(context, "متابعة", 14, yellow,
                                    fontWeight: FontWeight.bold),
                              )),
                          Spacer(),
                          Expanded(
                              child: SmoothPageIndicator(
                            controller: pageController,
                            count: 3,
                            effect: ScaleEffect(
                                spacing: 8.0,
                                radius: 2.0.r,
                                dotWidth: 24.0,
                                dotHeight: 16.0,
                                dotColor: Colors.grey,
                                activeDotColor: yellow),
                          )),
                        ],
                      ),
                    ),
                  )),
              SizedBox(
                height: 50.h,
              ),
              Expanded(
                  flex: 9,
                  child: PageView(
                    controller: pageController,
                    children: pag,
                  ))
            ],
          ),
        ));
  }
}
