 import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../constants/constant.dart';

class Button extends StatelessWidget {
  final String text;
    double size=250;
    double height=150;
    double ? fontSize;
   final bool  isFramed ;
   final bool  isClicked ;
  final Widget? widget;
  final VoidCallback? onPressed;

    Button({
    required this.text,
      required this.size,
      required this.height,
    required this.isFramed,
      required this.isClicked,
    this.onPressed,
    this.fontSize,
    this.widget,
     Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final landScape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return InkWell(
      onTap: onPressed,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,

      child:Container(
      width: size.w,
      height: height.h,
      margin: EdgeInsets.only(top: 10.h,bottom: 10.h),
      child: ElevatedButton(onPressed:onPressed, child: Text(text, style: TextStyle(color: isClicked==false?(isFramed?K.mainColor:K.kPrimaryColor):Colors.white,fontSize: fontSize,fontWeight: FontWeight.bold),),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(isClicked?K.kPrimaryColor:K.whiteColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7.0),
                      side: BorderSide(color: isClicked==false?(isFramed?K.mainColor:K.kPrimaryColor):Colors.white,width: 1)
                  )
              )
          )
      ),
      ),





      // child: Container(
      //   width: size,
      //   height: 70.h,
      //   margin: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 10.0.h),
      //   decoration: BoxDecoration(
      //       color: mainColor,
      //       borderRadius: BorderRadius.circular(10),
      //       border: Border.all(
      //         color: mainColor,
      //       )),
      //   child: Center(
      //     child: Text(
      //       text,
      //       style: TextStyle(
      //           color: kPrimaryColor,
      //           fontSize: !landScape ? 25.sp : 22.sp,
      //           fontWeight: FontWeight.w600),
      //     ),
      //   ),
      // ),
    );
  }
}
// class CustomButton extends StatelessWidget {
//   const CustomButton({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 250.w,
//       height: 50.h,
//       child: ElevatedButton(onPressed: (){}, child: Text('fmn'),
//           style: ButtonStyle(
//               backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor),
//               shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                   RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10.0),
//                       side: BorderSide(color: mainColor,width: 2)
//                   )
//               )
//           )
//       ),
//     );
//   }
// }
