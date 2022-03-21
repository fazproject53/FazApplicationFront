///import section
import 'package:flutter/material.dart';

import '../../Models/Methods.dart';
import '../../Models/Variables.dart';

class ContactWithUsMain extends StatelessWidget {
  const ContactWithUsMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: appBar('تواصل معنا', context),
        backgroundColor: blackBackground,
        body: const ContactWithUsHome(),
      ),
    );
  }
}

class ContactWithUsHome extends StatefulWidget {
  const ContactWithUsHome({Key? key}) : super(key: key);

  @override
  _ContactWithUsHomeState createState() => _ContactWithUsHomeState();
}

class _ContactWithUsHomeState extends State<ContactWithUsHome> {
  ///formKey
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ///--------------------------Text Field Section--------------------------
                ///Enter Your Name
                paddingWithTop(
                  15,
                  15,
                  35,
                  textFieldIcon(context, 'ادخل اسمك الكامل', 14, false,
                      userIcon, nameControllerUs, (value) {}, false),
                ),

                ///Enter Your Email
                paddingWithTop(
                  15,
                  15,
                  12,
                  textFieldIcon(context, 'ادخل بريدك الالكتروني', 14, false,
                      emailIcon, emailControllerUs, (value) {}, false),
                ),

                ///Enter Your Phone Number
                paddingWithTop(
                  15,
                  15,
                  12,
                  textFieldIcon(context, 'ادخل رقم هاتفك', 14, false, phoneNumberIcon,
                      phoneControllerUs, (value) {}, false),
                ),

                ///Title
                paddingWithTop(
                  15,
                  15,
                  12,
                  textFieldIcon(context, 'ادخل الموضوع باختصار', 14, false,
                      titleIcon, titleControllerUs, (value) {}, false),
                ),
                paddingWithTop(
                    15,
                    15,
                    25,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        text(context, 'ادخل نص الرسالة', 14,
                            white.withOpacity(0.7)),
                      ],
                    )),

                ///Description
                paddingWithTop(
                    15,
                    15,
                    12,
                    textFieldDesc(context, '', 14, false, descriptionIcon,
                        descriptionControllerUs, (value) {})),

                paddingWithTop(
                  15,
                  15,
                  25,
                  button(text(context, 'ارسال', 12, blackBackground), () {}),
                ),


              ],
            )));
  }
}
