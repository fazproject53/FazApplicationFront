import 'package:dropdown_below/dropdown_below.dart';
import 'package:faz_application/Models/Methods.dart';
import 'package:faz_application/Models/Variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class orderService extends StatefulWidget {
  @override
  State<orderService> createState() => _orderServiceState();
}

class _orderServiceState extends State<orderService> {

  var itemss = [{'no': 1, 'keyword': 'حدد الخدمة'},{'no': 2, 'keyword': 'تطوير ويب'}
    ,{'no': 3, 'keyword': 'تطوير تطبيقات'}];
  TextEditingController myController = new TextEditingController();
  List<DropdownMenuItem<Object?>> _dropDownItem = [];

  var _selectedTest;

  @override
  void initState(){
    _dropDownItem = buildDropdownTestItems(itemss);
    super.initState();
  }

  @override
  void dispose(){
    super.dispose();
  }

  List<DropdownMenuItem> buildDropdownTestItems(List list){
    List<DropdownMenuItem> items = [];
    for(var i in list){
      items.add(DropdownMenuItem(value: i, child: Text(i['keyword'])));
    }
    return items;
  }

  onChangeDropDownTest(selectedTest){
    print(selectedTest);
    setState(() {
      _selectedTest =selectedTest;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(title: Padding(
          padding:  EdgeInsets.only(top: 15.h , left: 50.w),
          child: Center(child: text(context, 'طلب خدمة', 18, white)),
        ), backgroundColor: blackBackground ),
        backgroundColor: blackBackground,
        body: SingleChildScrollView(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 70.h,),
          textFieldIcon(context, 'ادخل اسمك الكامل', 14, false, userIcon, myController, (value){}, false),
            SizedBox(height: 20.h,),
            textFieldIcon(context, 'ادخل بريدك الالكتروني', 14, false, emailIcon, myController, (value){}, false),
            SizedBox(height: 20.h,),
            textFieldIcon(context, 'ادخل رقم جوالك', 14, false, phoneNumberIcon, myController, (value){}, false),
            SizedBox(height: 20.h,),
            Padding(
              padding:  EdgeInsets.only(right: 15.0.w),
              child: Container(
                color: lightBlack,
                child: Row(
                  children: [
                    Icon(writeIcon, color: yellow.withOpacity(0.7),),
                    SizedBox(width: 10.w,),
                    Container(
                      width: 360.w,
                      child: DropdownBelow(
                        itemWidth: 380.w,
                        ///text style inside the menu
                        itemTextstyle: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: lightBlack,
                          fontFamily: 'Cairo',),
                        ///hint style
                        boxTextstyle: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: white.withOpacity(0.60),
                            fontFamily: 'Cairo'),
                        ///box style
                        boxPadding:
                        EdgeInsets.fromLTRB(13.w, 12.h, 13.w, 12.h),
                        boxWidth: 500.w,
                        boxHeight: 40.h,
                        boxDecoration: BoxDecoration(
                            color: lightBlack,
                            borderRadius: BorderRadius.circular(8.r)),
                        ///Icons
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white54,
                        ),
                        hint:  text(context, 'حدد الخدمة', 14, white.withOpacity(0.60)),
                        value: _selectedTest,
                        items: _dropDownItem,
                        onChanged: onChangeDropDownTest,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.h,),
            textFieldDesc(context, 'ادخل رسالتك', 14, false, chatIcon, myController, (value){}),
            SizedBox(height: 50.h,),
            button(text(context, 'ارسال', 17, blackBackground,fontWeight: FontWeight.bold), (){})
          ],),
        ),
      ),
    );
  }
}
