import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class K {

  static const mainColor = Color(0xFF1b455c);
  static const kPrimaryColor = Color(0xFFff8c29);
  static const iconColor = Color(0xFFa09c9c);
  static const textFieldFilledColor = Color(0xFFf5f5f5);
  static const blackColor = Colors.black;
  static const whiteColor = Colors.white;
  static final width = Get.width;
  static final height = Get.height;

static final boxDecoration= BoxDecoration(
  border: Border.all(color: K.iconColor,width: 2),
  borderRadius: BorderRadius.circular(10),
  );


  static TextStyle textStyle20 =   TextStyle(
  fontWeight: FontWeight.w500,
  color: K.mainColor,
  fontSize: 20.sp);
static TextStyle textStyle20B =   TextStyle(
  fontWeight: FontWeight.w800,
  color: K.mainColor,
  fontSize: 20.sp);


  static TextStyle textStyle16=  TextStyle(
    fontSize: 16.sp,
     color: K.mainColor,
    fontWeight: FontWeight.w500,
  );
  static SizedBox sizedBoxH = SizedBox(
    height: 40.h,
   
  );
  static SizedBox sizedBoxW = SizedBox(
    width: 22.w,
  );



}
