import 'package:dropdown_below/dropdown_below.dart';
import 'package:faz_application/Models/Methods.dart';
import 'package:faz_application/Models/Variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_image_slider/carousel.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
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

  // @override
  // void initState(){
  //   _dropDownItem = buildDropdownTestItems(itemss);
  //   super.initState();
  // }
  //
  // @override
  // void dispose(){
  //   super.dispose();
  // }
  //
  // List<DropdownMenuItem<Object?>> buildDropdownTestItems(List list){
  //   List<DropdownMenuItem<Object?>> items = [];
  //   for(var i in list){
  //     items.add(DropdownMenuItem(value: i, child: Text(i['keyword'])));
  //   }
  //   return items;
  // }
  //
  // onChangeDropDownTest(selectedTest){
  //   print(selectedTest);
  //   setState(() {
  //     _selectedTest =selectedTest;
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(title: Center(child: text(context, 'طلب خدمة', 17, white)), backgroundColor: blackBackground ),
        backgroundColor: blackBackground,
        body: SingleChildScrollView(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50.h,),
          textFieldIcon(context, 'ادخل اسمك الكامل', 14, false, userIcon, myController, (value){}, false),
            SizedBox(height: 10.h,),
            textFieldIcon(context, 'ادخل بريدك الالكتروني', 14, false, emailIcon, myController, (value){}, false),
            SizedBox(height: 10.h,),
            textFieldIcon(context, 'ادخل رقم جوالك', 14, false, phoneNumberIcon, myController, (value){}, false),
            SizedBox(height: 10.h,),
            textFieldIcon(context, 'حدد الخدمة', 14, false, writeIcon, myController, (value){}, false),
            SizedBox(height: 10.h,),
            //DropdownBelow(items: _dropDownItem, onChanged: _selectedTest),
            textFieldDesc(context, 'ادخل رسالتك', 14, false, chatIcon, myController, (value){

            }),
            SizedBox(height: 30.h,),
            button(text(context, 'ارسال', 17, blackBackground), (){})
          ],),
        ),
      ),
    );
  }
}
