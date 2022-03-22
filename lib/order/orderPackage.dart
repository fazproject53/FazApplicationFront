import 'package:dropdown_below/dropdown_below.dart';
import 'package:faz_application/Models/Methods.dart';
import 'package:faz_application/Models/Variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class orderPackage extends StatefulWidget {
  @override
  State<orderPackage> createState() => _orderPackageState();
}

class _orderPackageState extends State<orderPackage> {

  var itemss = [{'no': 1, 'keyword': 'باقة 1'},{'no': 2, 'keyword': 'الباقة المتوسطة'}
    ,{'no': 3, 'keyword': 'الباقة 3'}];
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
      items.add(DropdownMenuItem(
          alignment: Alignment.centerRight,value: i, child: Text(i['keyword'])));
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
        appBar: appBar('طلب باقة',context),
        endDrawer: drawer(context),
        backgroundColor: blackBackground,
        body: SingleChildScrollView(child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 70.h,),
            textFieldIcon(context, 'الاسم', 12, false, userIcon, nameControllerPackage, (value){}, false),
            SizedBox(height: 20.h,),
            textFieldIcon(context, 'البريد الالكتروني', 12, false, emailIcon, emailControllerPackage, (value){}, false),
            SizedBox(height: 20.h,),
            textFieldIcon(context, 'رقم الجوال', 12, false, phoneNumberIcon, phoneControllerPackage, (value){}, false),
            SizedBox(height: 20.h,),
            Container(
              height: 50.h,
              color: lightBlack,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: Icon(writeIcon, color: yellow.withOpacity(0.7),),
                  ),
                  SizedBox(width: 3.w,),
                  Container(
                    width: 320.w,
                    child: DropdownBelow(
                      dropdownColor: lightBlack,
                      itemWidth: 350.w,
                      ///text style inside the menu
                      itemTextstyle: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: white,
                        fontFamily: 'Cairo',),
                      ///hint style
                      boxTextstyle: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: white.withOpacity(0.60),
                          fontFamily: 'Cairo'),
                      ///box style
                      boxPadding:
                      EdgeInsets.fromLTRB(0.w, 12.h, 13.w, 12.h),
                      boxWidth: 500.w,
                      boxHeight: 45.h,
                      boxDecoration: BoxDecoration(
                          color: lightBlack,
                          borderRadius: BorderRadius.circular(8.r)),
                      ///Icons
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white54,
                      ),
                      hint: Text('حدد الباقة',style: TextStyle(fontSize:12.sp, color: white.withOpacity(0.60))),
                      value: _selectedTest,
                      items: _dropDownItem,
                      onChanged: onChangeDropDownTest,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h,),
            textFieldDesc(context, 'نص الرسالة', 14, false, chatIcon, descriptionControllerPackage, (value){}),
            SizedBox(height: 50.h,),
            button(text(context, 'ارسال', 12, blackBackground), (){})
          ],),
        ),
      ),
    );
  }
}
