import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomCard extends StatelessWidget {
  Widget body;
  Color color;
  CustomCard({
    Key? key,
    required this.body,
    required this.color
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: Get.width/1.1,
      child: Card(
        color: color,
          elevation: 5,
          child:body


      ),
    );
  }
}
