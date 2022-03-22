import 'package:flutter/material.dart';

import '../../Models/Methods.dart';
import '../../Models/Variables.dart';
class Intro2 extends StatefulWidget {
  const Intro2({Key? key}) : super(key: key);

  @override
  _Intro2State createState() => _Intro2State();
}

class _Intro2State extends State<Intro2> {
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
                title:  text(context, "واقع ملموس", 32, white,fontWeight: FontWeight.bold),
                subtitle:text(context, "يمكننا تحويل فكرتك الى واقع ملموس", 16, lightPurple),
              )),
              Spacer(),
              const Expanded(
                child: Image(image: AssetImage("assets/image/int2.png"),fit: BoxFit.contain,),
                flex: 8,
              )
            ],
          ),
        ));
  }
}
