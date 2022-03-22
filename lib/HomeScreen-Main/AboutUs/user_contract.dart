///import section
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Models/Methods.dart';
import '../../Models/Variables.dart';



class UserContractMain extends StatelessWidget {
  const UserContractMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: appBar('من نحن', context),
        endDrawer: drawer(context),
        backgroundColor: blackBackground,
        body: const UserContractHome(),
      ),
    );
  }
}



class UserContractHome extends StatefulWidget {
  const UserContractHome({Key? key}) : super(key: key);

  @override
  State<UserContractHome> createState() => _UserContractHomeState();
}

class _UserContractHomeState extends State<UserContractHome> {

  Widget title() {
    return text(context, "اتفاقية المستخدم", 14, white, family: 'DIN Next LT Arabic');
  }

  Widget subTitle() {
    return text(
        context,
        "نسعى دائما لتقديم الافضل في موقعنا نعتني بعملائنا ونهتم بارائهم فهم مصدر إلهام لأعمالنا الناجحة",
        20,
        white, family: 'DIN Next LT Arabic');
  }

  Widget description() {
    return text(
      context,
      "فاز في سطورفاز في سطورفاز في سطورفاز في سطورفاز في سطورفاز في سطورفاز في سطورفاز في سطورفاز في سطورفاز",
      13,
      white, );
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
              SizedBox(
                height: 20.h,
              ),
              description(),
              SizedBox(
                height: 10.h,
              ),
              description(),
              SizedBox(
                height: 10.h,
              ),
              description(),
              SizedBox(
                height: 10.h,
              ),
              description(),
              SizedBox(
                height: 10.h,
              ),
              description(),
              SizedBox(
                height: 10.h,
              ),
              description()

            ],
          ),
        )
    );
  }
}
