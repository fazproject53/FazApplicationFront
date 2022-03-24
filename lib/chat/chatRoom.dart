import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Models/Methods.dart';
import '../Models/Variables.dart';

class chatRoom extends StatefulWidget{
  _chatRoomState createState() => _chatRoomState();
}

class _chatRoomState extends State<chatRoom> {

  List<Widget>? listwidget;
  String help = "";
  static bool isWritting = false;
  bool isPressed = false;
  bool wrote = false;
  var currentFocus;

  TextEditingController m = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    listwidget = [
      container('لو سمحت فية مشكلة'),
      container('مرحبا'),
      text(context, 'Monday, 10:40 am', 14, white,align: TextAlign.center),
      containerUser('  اتفضل مع حضرتك يافندم في اي استفسار بخصوص الخدمة؟'),
      containerUser('مرحبا'),
    ];

    return Directionality(
      textDirection: TextDirection.rtl,
      child: GestureDetector(
        onTap: () {
          unfocus();
          setState(() {
            isWritting = false;
          });
        },
        child: Scaffold(
          appBar: appBar('المحادثة المباشرة',context),
          backgroundColor: blackBackground,
          body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: ListView(
                      reverse: true,
                      children: listwidget!,
                    ),
                  ),
                ),


                Padding(
                  padding: MediaQuery
                      .of(context)
                      .viewInsets
                      .bottom != 0 ? EdgeInsets.only(bottom: 0.h) : EdgeInsets
                      .only(bottom: 0.h),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: isWritting ? EdgeInsets.only(
                                right: 15.w) : EdgeInsets.only(
                                right: 15.w),
                            child: InkWell(onTap: () {
                              FocusManager.instance.primaryFocus
                                  ?.unfocus();
                              setState(() {
                                isWritting = false;
                                m.clear();
                              });
                            },
                              child: Directionality(
                                  textDirection: TextDirection.ltr,child: Icon(send, size: 30,color: yellow, )),),
                          )
                        ],
                      ),
                      Container(
                        height: 50.h,
                        margin:EdgeInsets.all(15),
                        decoration:   BoxDecoration(
                          color: cardColor,
                            border: Border.all(width: 0.w)),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 35.h,
                                width: 270.w,
                                margin: EdgeInsets.only(top: 10.h,
                                    bottom: 10.h,
                                    left: 20.w),
                                decoration: BoxDecoration(
                                    color: cardColor,
                                    borderRadius: BorderRadius.circular(50),
                                    border: const Border(
                                        top: BorderSide(color: cardColor)
                                        ,
                                        bottom: BorderSide(color: cardColor),
                                        left: BorderSide(color: cardColor),
                                        right: BorderSide(color: cardColor))),
                                child: TextFormField(
                                  validator: (value) {
                                    if (value!.isNotEmpty) isWritting = true;
                                  },
                                  controller: m,
                                  onTap: () {
                                    setState(() {
                                      m.addListener(() {
                                        MediaQuery
                                            .of(context)
                                            .viewInsets
                                            .bottom != 0 && m.text.isNotEmpty ?
                                        isWritting = true : isWritting = false;
                                      });
                                    });
                                  },

                                  onChanged: (value) {
                                    setState(() {
                                      value = m.text;
                                    });
                                  },
                                  decoration: InputDecoration(
                                    border: const OutlineInputBorder(
                                        borderSide: BorderSide.none),
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 10.h, horizontal: 20.w),
                                    hintText: 'اكتب هنا .....',
                                    hintStyle: TextStyle(color: white.withOpacity(0.5))

                                  ),),
                              ),



                            ]),
                      ),
                    ],
                  ),
                ),

              ]),
        ),
      ),
    );
  }

  Widget container(String text) {
    return Row(
      children: [
        SizedBox(width: 10.w,),
        CircleAvatar(backgroundImage: Image.asset('assets/image/userImage.png').image,),
        SizedBox(width: 5.w,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: text.length > 10? 200.w: 70.w,
              margin: const EdgeInsets.only(top: 10, bottom: 10, left: 3, right: 5),
              decoration: const BoxDecoration(color: grey,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),
                      topLeft: Radius.circular(10))),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(text, style: TextStyle(color: white),),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget containerUser(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: text.length > 10? 200.w: 70.w,
              margin: const EdgeInsets.only(top: 10, bottom: 10, left: 5, right: 2),
              decoration:  const BoxDecoration(color: grey,
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),
                      topRight: Radius.circular(10))
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(text, style: TextStyle(color: white),textAlign: TextAlign.start,),
              ),
            ),
          ],
        ),
        SizedBox(width: 5.w,),
        CircleAvatar(backgroundImage: Image.asset('assets/image/img_1.png').image,),
        SizedBox(width: 10.w,),
      ],
    );
  }

  unfocus() {
    currentFocus = FocusScope.of(context);

    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

}
