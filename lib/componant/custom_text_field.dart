import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../constants/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.textEditingController,
    required this.hintText,
    required this.labelText,
    required this.isIcon,
      this.filledColorWhite,
    required this.icon,
  }) : super(key: key);

  final TextEditingController textEditingController;
  final String hintText;
  final String labelText;
  final IconData icon;
  final bool isIcon;
  final bool? filledColorWhite;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: textEditingController,
        cursorColor: K.mainColor,
        cursorHeight: 30.h,

        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },

         decoration:InputDecoration(


           prefixIcon: isIcon?Icon(icon):null,

          hintText: hintText.toString().tr,
          label: Text(labelText.tr,style: TextStyle(color: K.iconColor,fontSize: 13),),

          labelStyle: TextStyle(color: K.mainColor),

          fillColor: filledColorWhite==true?K.whiteColor:K.textFieldFilledColor,
          filled: true,

          isDense: true,

          // Added this
          contentPadding: EdgeInsets.all(20.w),
          hintStyle: TextStyle(color: K.mainColor,fontSize: 12.sp),

          border: OutlineInputBorder(

            borderSide: BorderSide(

              color: Colors.red,
            ),
            borderRadius: BorderRadius.circular(8.r),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: filledColorWhite==true?K.iconColor.withOpacity(.3) :K.mainColor,
            ),
            borderRadius: BorderRadius.circular(8.r),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
            borderRadius: BorderRadius.circular(8.r),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: K.mainColor,
            ),
            borderRadius: BorderRadius.circular(8.r),
          ),)
    );
  }
}
