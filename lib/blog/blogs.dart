import 'package:faz_application/Models/Methods.dart';
import 'package:faz_application/Models/Variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'blogDetails.dart';

class blogs extends StatefulWidget {
  @override
  State<blogs> createState() => _blogsState();
}

class _blogsState extends State<blogs> {

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
        appBar: appBar('المدونة',context),
        endDrawer: drawer(context),
        backgroundColor: blackBackground,
        body: SingleChildScrollView(child: padding(
         10.w,10.w, Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50.h,),
              text(context, 'ابحث عن ما تريدة في المدونة', 14, white, ),
              SizedBox(height: 10.h,),
              text(context, 'نقدم لك مجموعة من المقالات المفيدة التي سوف توسع مداركك', 16, white,),
              SizedBox(height: 20.h,),

              textFieldIcon(context, 'ابحث عن اي مقالة تريدها', 14, false, searchIcon, myController, (value){}, false),
              SizedBox(height: 20.h,),
              GridView.count(
                physics: ScrollPhysics(),
                crossAxisCount:2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10,
                shrinkWrap: true,
                children: List.generate(6, (index) {
                  return  InkWell(
                    onTap: (){goToPage(context, blogDetails());},
                    child: Container(
                      height: 150.h,
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          ClipRRect(borderRadius: BorderRadius.circular( 8),child: Image.asset('assets/image/blog.png',height: double.infinity, fit: BoxFit.fill,),
                          ),

                          Container(
                            alignment: Alignment.bottomRight,
                            child: Container(height: 55.h,color: lightBlack.withOpacity(0.8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                text(context, 'هناك حقيقة مثبتة منذ زمن ', 14, white),
                                text(context, '11/2/2020 ', 14, white),
                              ],
                            ),)
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ],),
        ),
        ),
      ),
    );
  }
}
