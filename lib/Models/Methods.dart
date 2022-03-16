
///Import Sections
import 'package:faz_application/Models/Variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///---------------------------------Text Section--------------------------------
///Text Widget
Widget text(
    context,
    String key,
    double fontSize,
    Color color, {
      family = "Cairo",
      align = TextAlign.right,
      double space = 0,
      FontWeight fontWeight = FontWeight.normal,
    }) {
  return Text(
    key,
    textAlign: align,
    style: TextStyle(
      color: color,
      fontFamily: family,
      fontSize: fontSize.sp,
      letterSpacing: space.sp,
      fontWeight: fontWeight,
    ),
  );
}

///Text Fields
Widget textFieldIcon(
    context,
    String key,
    double fontSize,
    bool hintPass,
    IconData prefixIcon,
    TextEditingController myController,
    myValue,
    isOptional
    ) {
  return TextFormField(
    obscureText: hintPass,
    validator: myValue,
    controller: myController,
    style: TextStyle(color: white, fontSize: fontSize.sp, fontFamily: 'Cairo'),
    decoration: InputDecoration(
        isDense: false,
        filled: true,
        prefixIcon: Icon(prefixIcon, color: yellow.withOpacity(0.7),),
        helperText: isOptional? 'اختياري': null,
        helperStyle: TextStyle(color: white, fontSize: fontSize.sp, fontFamily: 'Cairo'),
        hintStyle: TextStyle(color: white.withOpacity(0.6), fontSize: fontSize.sp, fontFamily: 'Cairo'),
        fillColor: lightBlack,
        labelStyle: TextStyle(color: white, fontSize: fontSize.sp),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(3.r)),
        focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: yellow,width: 1)),
        hintText: key,
        contentPadding: EdgeInsets.all(15.h)),
  );
}

///Text Fields Description
Widget textFieldDesc(
    context,
    String key,
    double fontSize,
    bool hintPass,
    IconData prefixIcon,
    TextEditingController myController,
    myValue,
    ) {
  return SizedBox(
    height: 200.h,
    child: TextField(
      controller: myController,
      keyboardType: TextInputType.multiline,
      maxLines: null,
      minLines: 10,
      textAlignVertical: TextAlignVertical.top,
      style: TextStyle(color: white, fontSize: fontSize.sp, fontFamily: 'Cairo'),
      decoration: InputDecoration(
          isDense: false,
          filled: true,
          prefixIcon:Icon(prefixIcon, color: yellow.withOpacity(0.7),),
        hintStyle: TextStyle(color: white.withOpacity(0.6), fontSize: fontSize.sp, fontFamily: 'Cairo'),
          fillColor: lightBlack,
          labelStyle: TextStyle(color: white, fontSize: fontSize.sp,),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(3.r)),
          focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: yellow,width: 1)),
          hintText: key,
          ),
    ),
  );
}
///-----------------------------------------------------------------------------

///---------------------------------Button Section------------------------------
///Button without border
Widget button(Widget child, onTap,{height = 35.0, double radius = 8.0, width = 119.0}) {
  return InkWell(
    child: Container(
      height: height,
      width: width,
      child:Center(child: child),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius.r),
        color: yellow,
      ),
    ),
    onTap: onTap,
  );
}

///Button with border
Widget gradientContainer(double width,double height, Widget child, onTap,{Color color = yellow, double radius = 8.0
}) {
  return InkWell(
    child: Container(
      width: width,
      height: height,
      child: Center(child: child),
      decoration: BoxDecoration(
        border: Border.all(color: color, width: 1.5.w),
        borderRadius: BorderRadius.circular(radius.r),
      ),
    ),
    onTap: onTap,
  );
}
///-----------------------------------------------------------------------------

///---------------------------------Padding Section------------------------------
///Padding with top
Widget paddingWithTop(double pL, double pR, double pT, Widget child,
    {double pB = 0.0}) {
  return Padding(
    padding: EdgeInsets.only(left: pL.w, right: pR.w, top: pT.h, bottom: pB.h),
    child: child,
  );
}
///Padding without top
Widget padding(
    double left,
    double right,
    Widget child
    ) {
  return Padding(
    padding: EdgeInsets.only(left: left.w, right: right.w),
    child: child,
  );
}
///-----------------------------------------------------------------------------




























