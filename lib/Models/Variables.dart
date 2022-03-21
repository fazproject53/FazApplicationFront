
///Import Sections
import 'package:flutter/material.dart';


///Colors
const Color blackBackground = Color(0xFF000000);
const Color white = Color(0xFFFFFFFF);
const Color yellow = Color(0xFFECBB5C);
const Color grey = Color(0xFF323435);
const Color lightBlack = Color(0xFF171616); ///Used in texts fields and container
const Color lightPurple = Color(0xFF7B7890);
const Color cardColor = Color(0xFF0D0D0D);
const Color transparent = Colors.transparent;

///Icons
IconData addIcon = Icons.add_box;
IconData chatIcon = Icons.chat_outlined;
IconData askServiceIcon = Icons.design_services_outlined;
IconData askPackageIcon = Icons.widgets_outlined;
IconData closeIcon = Icons.close;
IconData pioneeringIcon = Icons.task_alt_outlined;
IconData protectedIcon = Icons.security_outlined;
IconData highQualityIcon = Icons.emoji_emotions_outlined;
IconData uniqueDesignIcon= Icons.flare_outlined;
IconData searchIcon= Icons.search;
IconData timeIcon= Icons.access_time_outlined;
IconData userIcon= Icons.person;
IconData emailIcon= Icons.email;
IconData phoneNumberIcon= Icons.phone;
IconData titleIcon = Icons.title_outlined;
IconData descriptionIcon = Icons.description_outlined;
IconData writeIcon = Icons.border_color_outlined;
IconData facebookIcon = Icons.facebook;
IconData backIcon = Icons.arrow_forward_ios_rounded;


///Text Controller
///Contact with us
TextEditingController nameControllerUs = TextEditingController();
TextEditingController emailControllerUs = TextEditingController();
TextEditingController phoneControllerUs = TextEditingController();
TextEditingController titleControllerUs = TextEditingController();
TextEditingController descriptionControllerUs = TextEditingController();

///AskService
TextEditingController nameControllerService = TextEditingController();
TextEditingController emailControllerService = TextEditingController();
TextEditingController phoneControllerService = TextEditingController();
TextEditingController titleControllerService = TextEditingController();
TextEditingController descriptionControllerService = TextEditingController();

///AskPackage
TextEditingController nameControllerPackage = TextEditingController();
TextEditingController emailControllerPackage = TextEditingController();
TextEditingController phoneControllerPackage = TextEditingController();
TextEditingController titleControllerPackage = TextEditingController();
TextEditingController descriptionControllerPackage = TextEditingController();

///Lists
List <String> services = [
  'تصميم المواقع',
  'تصميم الهوية',
  'محركات البحث',
  'التواصل الاجتماعي',
  'تطبيقات الجوال',
];

List <String> packages = [
  'الباقة الذهبية',
  'الباقة الفضية',
  'الباقة البرونزية'
];
