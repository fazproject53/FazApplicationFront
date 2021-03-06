///import section
import 'dart:convert';

import 'package:faz_application/HomeScreen-Main/Packages/aleart.dart';
import 'package:faz_application/order/orderPackage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import '../../Models/Methods.dart';
import '../../Models/Variables.dart';
import 'models.dart';

class PackagesMain extends StatelessWidget {
  const PackagesMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: appBar('الباقات', context),
        endDrawer: drawer(context),
        backgroundColor: blackBackground,
        body: const PackagesHome(),
      ),
    );
  }
}

class PackagesHome extends StatefulWidget {
  const PackagesHome({Key? key}) : super(key: key);

  @override
  _PackagesHomeState createState() => _PackagesHomeState();
}

class _PackagesHomeState extends State<PackagesHome> {

  late Future<Autogenerated> getdata;
  Future<Autogenerated> getPackeg() async {
    final data = await http
        .get(Uri.parse("http://mobile.celebrityads.net/api/services"));
    if (data.statusCode == 200) {
      return Autogenerated.fromJson(jsonDecode(data.body));
    } else {
      // try{
      //
      // }catch( e){
      //   print(e);
      // }
      throw Exception('Failed to load activity');
    }
  }

  @override
  void initState() {
    setState(() {
      getdata = getPackeg();
    });
    print(getdata);
    super.initState();
  }

  ///Package Name
  List<String> packageName = [
    "باقة بسيطة",
    "باقة متوسطة",
    "باقة كبيرة",
  ];

  ///Package Price
  List<String> packagePrice = ["1200 ر.س", "1400 ر.س", "1400 ر.س"];
  ///Package Description1
  Widget packageDescription() {
    return text(
      context,
      'تشمل المواقع او التطبيقات التي تحتوي علي',
      12,
      white,
    );
  }

  ///Package Description2
  Widget packageDescription1() {
    return text(
      context,
      'تشمل المواقع او التطبيقات التي تحتوي علي',
      12,
      white,
    );
  }

  @override
  Widget build(BuildContext context) {


    return SafeArea(
        child: FutureBuilder<Autogenerated>(
            future: getdata,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: 50.h,
                    ),

                    ///ListView --> return a Card that contain all info about package
                    SizedBox(
                      height: 550.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: snapshot.data!.data!.length,
                        itemBuilder: (context, index) {
                          return cardInfoPackage(snapshot,index);
                        },
                      ),
                    )
                  ],
                );
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              return const CircularProgressIndicator();
            }));
  }

  ///Card Widget
  Widget cardInfoPackage(snapshot,int index) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Container(
        width: 280.w,
        height: 220.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.r),
          color: cardColor,
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 25.h, right: 15.w, left: 15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ///packageName
              text(context, "${snapshot.data!.data![index].title}", 16, yellow,
                  fontWeight: FontWeight.bold),
              SizedBox(
                height: 10.h,
              ),

              ///packagePrice
              text(context, "${snapshot.data!.data![index].price}", 16, white,
                  fontWeight: FontWeight.bold),
              SizedBox(
                height: 10.h,
              ),

              ///packageDescription
              packageDescription(),
              SizedBox(
                height: 7.h,
              ),

              ///packageDescription
              packageDescription1(),
              SizedBox(
                height: 10.h,
              ),
              Divider(
                color: grey,
                height: 30.h,
                thickness: 0.6,
              ),

              ///
              Expanded(
                child: ListView.builder(
                  itemCount: snapshot.data!.data![index].points.length,
                  itemBuilder: (context, indexx) {
                    return Padding(
                      padding: EdgeInsets.only(top: 20.h, right: 20.w, left: 20.w),

                      ///Column to have all info inside
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                child: Icon(
                                  doneIcon,
                                  size: 17.sp,
                                  color: blackBackground,
                                ),
                                radius: 12.r,
                                backgroundColor: yellow,
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              text(
                                context,
                                "${snapshot.data!.data![index].points[indexx].text}",
                                12,
                                white,
                              )
                            ],
                          ),

                          ///---------------------------
                          SizedBox(
                            height: 30.h,
                          ),

                          ///---------------------------


                        ],
                      ),
                    );
                  },

                ),
              ),
              paddingWithTop(
                15,
                15,
                40,
                button(text(context, 'اطلب الباقة', 12, blackBackground),
                        () {
                          show(context);
                    //goToPage(context, orderPackage());
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ListView.builder(
// scrollDirection: Axis.horizontal,
// shrinkWrap: true,
// itemCount: 3,
// itemBuilder: (context, index) {
// return cardInfoPackage(index);
// },
// ),
//Text("${snapshot.data!.data![i].title}",style: TextStyle(color: Colors.white),)
