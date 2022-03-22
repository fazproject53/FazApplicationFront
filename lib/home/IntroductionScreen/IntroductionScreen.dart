import 'package:flutter/material.dart';

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
  PageController pageController=PageController();
  int selectedIndex=0;
  List<Widget> pag=[Intro1(),Intro2(),Intro3()];

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController=PageController(initialPage: selectedIndex);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackBackground,
      body: PageView(
        controller: pageController,
      children: pag,
      )
    );
  }
}
