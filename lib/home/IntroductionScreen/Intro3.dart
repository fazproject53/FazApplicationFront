import 'package:flutter/material.dart';

import '../../Models/Methods.dart';
import '../../Models/Variables.dart';
class Intro3 extends StatefulWidget {
  const Intro3({Key? key}) : super(key: key);

  @override
  _Intro3State createState() => _Intro3State();
}

class _Intro3State extends State<Intro3> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: blackBackground,
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              Expanded(flex: 2, child: ListTile(
                title:  text(context, "ثقة عملائنا", 32, white,fontWeight: FontWeight.bold),
                subtitle:text(context, "نحرص دائما على تقديم افضل خدمة لـ زبائننا", 16, lightPurple),
              )),
              Spacer(),
              const Expanded(
                child: Image(image: AssetImage("assets/image/int3.png"),fit: BoxFit.contain,),
                flex: 8,
              )
            ],
          ),
        ));
  }
}
