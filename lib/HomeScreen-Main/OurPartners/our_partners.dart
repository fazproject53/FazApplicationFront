///import section
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Models/Methods.dart';
import '../../Models/Variables.dart';

class OurPartnerMain extends StatelessWidget {
  const OurPartnerMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: appBar('شركاءنا', context),
        endDrawer: drawer(context),
        backgroundColor: blackBackground,
        body: const OurPartnerHome(),
      ),
    );
  }
}

class OurPartnerHome extends StatefulWidget {
  const OurPartnerHome({Key? key}) : super(key: key);

  @override
  _OurPartnerHomeState createState() => _OurPartnerHomeState();
}

class _OurPartnerHomeState extends State<OurPartnerHome> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 40.h, left: 60.w,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('assets/image/Pages.png'),
          ),
        ],
      ),
    );
  }
}

