import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_text_field.dart';

class RegisterTextField extends StatelessWidget {
  const RegisterTextField({
    Key? key,
    required this.controller,
    required this.label,
    required this.icon,
  }) : super(key: key);

  final TextEditingController controller;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
     return Container(
      height: 80.h,
      padding: EdgeInsets.only(left :30.w,right: 30.w,top: 20.h),
      margin: EdgeInsets.only(left :20.w,right: 20.w),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Material(
          clipBehavior: Clip.antiAlias, // A
          elevation: 5,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0)),
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: CustomTextField(

              textEditingController: controller,
              hintText: " ",
              filledColorWhite:true,
              labelText: label,
              icon: icon,
               isIcon: false,
            ),
          ),
        ),
      ),
    );
  }
}