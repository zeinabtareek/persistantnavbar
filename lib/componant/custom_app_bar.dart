
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../screens/loan_details_screen/loan_details_screen.dart';

class SanadAppBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;
  final String title;
  final Color color;
  final Color bg;

  SanadAppBar(this.title,this.color,this.bg, {Key? key,})
      : preferredSize =  Size.fromHeight(70.h),
        super(key: key);

  @override
  State<SanadAppBar> createState() => _SanadAppBarState();
}

class _SanadAppBarState extends State<SanadAppBar> {


  @override
  Widget build(BuildContext context) {
    return   PreferredSize(
    preferredSize: Size.fromHeight(50.0),
    child: AppBar(
    elevation: 0.0,
      backgroundColor: widget.bg,
      centerTitle: true,
      automaticallyImplyLeading: false,
      titleSpacing: 0,
       bottomOpacity: 0.0,

      title: Text(widget.title.tr,style: TextStyle(color:widget.color,fontSize: 25.sp,fontWeight: FontWeight.bold,height: 3),),

      actions:[
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: InkWell(
            child: Image.asset(
              'assets/icons/Group 63550.png',
               width: 25.w,
              color:widget.color ,
              fit: BoxFit.contain,
            ),
            onTap: (){
              Navigator.push(context, CupertinoPageRoute(builder: (context)=>LoanDetailsScreen()));

            },
          ),
        ),
      ],leading:Padding(
        padding: const EdgeInsets.all(12.0),
        child: Image.asset(
        'assets/icons/Group 63563.png',
         width: 20.w,
        color: widget.color,
        fit: BoxFit.contain,
    ),
      ),
      ),
    );
  }
}
