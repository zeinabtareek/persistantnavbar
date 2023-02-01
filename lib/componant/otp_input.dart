
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/constant.dart';

class OtpInput extends StatelessWidget {
  final TextEditingController controller;
  final double height;
  final double width;
  final bool autoFocus;
    bool passwordVisible=false;//This will obscure text dynamically

    OtpInput(this.controller, this.passwordVisible,this.autoFocus,this.height,this.width ,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Card(
        elevation: 2,
        child: TextField(
          obscuringCharacter:'*',
          autofocus: autoFocus,
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          inputFormatters: [],
          cursorHeight: 30.h,

          controller: controller,
          maxLength: 1,

          obscureText: !passwordVisible,//This will obscure text dynamically

          cursorColor:K.mainColor,
          decoration:   const InputDecoration(

              border: OutlineInputBorder(),

              enabledBorder: OutlineInputBorder(
                borderSide:   BorderSide(color: Colors.transparent, width: 2.0),),
              focusedBorder:     OutlineInputBorder(
                borderSide:  BorderSide(color:K.mainColor ),),
              counterText: '',
              hintStyle: TextStyle(color: K.mainColor, fontSize: 20.0)),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40.sp,
            color: K.kPrimaryColor,
            height: 1
          ),
          onChanged: (value) {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            }
          },
        ),
      ),
    );
  }
}