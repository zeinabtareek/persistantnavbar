import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import '../../componant/custom_app_bar.dart';
import '../../componant/custom_button.dart';
import '../../constants/constant.dart';
import 'controller/loan_details_controller.dart';

class LoanDetailsScreen extends StatelessWidget {
    LoanDetailsScreen({Key? key}) : super(key: key);
final controller =Get.put(LoanDetailsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SanadAppBar('Settings  ', K.iconColor, Colors.white),
      body: Center(
        child: SingleChildScrollView(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              children: [
                K.sizedBoxH,
                Text(
                  'رقم ...... :',
                  style: K.textStyle16,
                ),
                Container(
                  width: 200.w,
                  height: 40.h,                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1.0, color: K.mainColor,),), margin: EdgeInsets.only(top: 10.h, bottom: 10.h),
                  child: Center(child: Text('3773773')),
                ),
                Text(
                  'قيمه .... :',
                  style: K.textStyle16,
                ),
                Container(
                  width: 200.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1.0, color: K.mainColor,),), margin: EdgeInsets.only(top: 10.h, bottom: 10.h),
                  child: Center(child: Text('٢٢٢٢')),
                ),Text(
                  'تاريخ .... :',
                  style: K.textStyle16,
                ),
                Container(
                  width: 200.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1.0, color: K.mainColor,),),
                  child: Center(child: Text('١١/٢٢/٢٠٢٢')),
                ),

                Obx(() =>  Button(
                  height: Get.height/20.h,
                  isFramed: true,
                  isClicked: controller.click.value,
                  size: 300,
                  text: 'Click',
                  onPressed: (){
                    controller.isClicked();
                  },
                ),
                ),K.sizedBoxH,


              ],
            ),
          ),
        ),
      ),
    );
  }
}
