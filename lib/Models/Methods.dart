///Import Sections
import 'package:faz_application/Models/Variables.dart';
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
    isOptional) {
  return TextFormField(
    obscureText: hintPass,
    validator: myValue,
    controller: myController,
    style: TextStyle(color: white, fontSize: fontSize.sp, fontFamily: 'Cairo'),
    decoration: InputDecoration(
        isDense: false,
        filled: true,
        prefixIcon: Icon(
          prefixIcon,
          color: yellow.withOpacity(0.7),
        ),
        helperText: isOptional ? 'اختياري' : null,
        helperStyle:
            TextStyle(color: white, fontSize: fontSize.sp, fontFamily: 'Cairo'),
        hintStyle: TextStyle(
            color: white.withOpacity(0.6),
            fontSize: fontSize.sp,
            fontFamily: 'Cairo'),
        fillColor: lightBlack,
        labelStyle: TextStyle(color: white, fontSize: fontSize.sp),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(3.r)),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: yellow, width: 1)),
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
      style:
          TextStyle(color: white, fontSize: fontSize.sp, fontFamily: 'Cairo'),
      decoration: InputDecoration(
        isDense: false,
        filled: true,
        prefixIcon: Padding(
          padding:  EdgeInsets.only(bottom: 130.h),
          child: Icon(
            prefixIcon,
            color: yellow.withOpacity(0.7),
          ),
        ),
        hintStyle: TextStyle(
            color: white.withOpacity(0.6),
            fontSize: fontSize.sp,
            fontFamily: 'Cairo'),
        fillColor: lightBlack,
        labelStyle: TextStyle(
          color: white,
          fontSize: fontSize.sp,
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(3.r)),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: yellow, width: 1)),
        hintText: key,
      ),
    ),
  );
}

///-----------------------------------------------------------------------------

///---------------------------------Button Section------------------------------
///Button without border
Widget button(Widget child, onTap,
    {height = 35.0, double radius = 8.0, width = 119.0}) {
  return InkWell(
    child: Container(
      height: height,
      width: width,
      child: Center(child: child),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius.r),
        color: yellow,
      ),
    ),
    onTap: onTap,
  );
}

///Button with border
Widget gradientContainer(double width, double height, Widget child, onTap,
    {Color color = yellow, double radius = 8.0}) {
  return InkWell(
    child: Container(
      width: width.w,
      height: height.h,
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
///-----------------------------------------------------------------------------
Widget container( Widget child, onTap,
    { BoxConstraints? constraints,double? height,double? width,Color color = yellow, double radius = 8.0,Color backgroundColor=Colors.transparent}) {
  return InkWell(
    child: Container(

      constraints:constraints,
      width: width?.w,
      height: height,
      child: Center(child: child),
      decoration: BoxDecoration(

        color: backgroundColor,
        border: Border.all(color: color, width: 1.5.w),
        borderRadius: BorderRadius.circular(radius.r),
      ),
    ),
    onTap: onTap,
  );
}
///---------------------------------Padding Section-----------------------------
///Padding with top
Widget paddingWithTop(double pL, double pR, double pT, Widget child,
    {double pB = 0.0}) {
  return Padding(
    padding: EdgeInsets.only(left: pL.w, right: pR.w, top: pT.h, bottom: pB.h),
    child: child,
  );
}

///Padding without top
Widget padding(double left, double right, Widget child) {
  return Padding(
    padding: EdgeInsets.only(left: left.w, right: right.w),
    child: child,
  );
}

///-----------------------------------------------------------------------------

///---------------------------------AppBar Section-----------------------------
PreferredSizeWidget? drowAppBar(String title, {void Function()? onPressed}) {
  return AppBar(
    elevation: 0,
    backgroundColor: blackBackground,
    centerTitle: true,
    title: Text(title,
        style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold)),
    actions: [
      IconButton(
          onPressed: onPressed,
          icon: Icon(
            backIcon,
            color: white,
          ))
    ],
  );
}

appBar(String title, BuildContext context ,{Color color = blackBackground}){
  return AppBar(
    title: Text(title),
    centerTitle: true,
    leading: IconButton(
      padding: EdgeInsets.only(right: 20.w),
      icon: const Icon(Icons.arrow_back_ios),
      color: white,
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    backgroundColor: color,
    elevation: 0,
  );
}

///app bar without back icon
AppBarNoIcon(String title,{Color color = blackBackground}){
  return AppBar(
    title: Text(title,style:TextStyle(
        fontSize:22.sp,
        fontFamily: 'Cairo',
        color: white
    ),
    ),
    centerTitle: true,
    backgroundColor: color,
    elevation: 0,
  );
}
///-----------------------------------------------------------------------------


///Navigator
goToPage(context, pageName) {
  return Navigator.push(context, MaterialPageRoute(builder: (context) => pageName));
}