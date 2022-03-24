import 'package:flutter/material.dart';

import '../../Models/Methods.dart';
import '../../Models/Variables.dart';

class Intro1 extends StatefulWidget {
  const Intro1({Key? key}) : super(key: key);

  @override
  _Intro1State createState() => _Intro1State();
}

class _Intro1State extends State<Intro1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackBackground,
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: ListTile(
                  title: text(context, "مرحبا", 32, white,
                      fontWeight: FontWeight.bold),
                  subtitle: text(
                      context,
                      "نعمل على تقديم خدمات متكاملة تلبي إحتياجك لتطوير أعمالك",
                      16,
                      lightPurple),
                )),
            Spacer(),
            const Expanded(
              child: Image(
                image: AssetImage("assets/image/int1.png"),
                fit: BoxFit.contain,
              ),
              flex: 8,
            )
          ],
        ),
      ),
    );
  }
}
