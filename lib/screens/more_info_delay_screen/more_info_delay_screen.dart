import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../componant/custom_app_bar.dart';
import '../../componant/custom_button.dart';
import '../../constants/constant.dart';
import 'controller/more_info_delay_controller.dart';

class MoreInfoDelayScreen extends StatelessWidget {
  final controller = Get.put(MoreInfoDelayController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SanadAppBar('المزيد', K.iconColor, Colors.white),
      body: Center(
        child: Column(
          children: [
            K.sizedBoxH,
            Container(
              width: 100.w,
              height: 120.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.sp),
                  border: Border.all(
                    color: K.kPrimaryColor,
                    width: 5.w,
                  )),
              child: Center(
                  child: Text(
                '200 \$',
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700),
              )),
            ),
            Text(
              'amount   :',
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700),
            ),
            K.sizedBoxH,
            Obx(
              () => Button(
                height: Get.height / 20.h,
                isFramed: false,
                isClicked: controller.click.value,
                size: Get.width / 2.5.w,
                text: " dispose  1",
                onPressed: () {
                  controller.isClicked();
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>MoreInfoDelayScreen()));
                  // Get.offAllNamed(AppRoutes.loanDetailsScreen);
                },
              ),
            ),
            Button(
              height: Get.height / 20.h,
              isFramed: false,
              isClicked: true,
              size: Get.width / 2.5.w,
              text: "  dispose 2",
              onPressed: () {
                // controller.isClicked();
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>RequestMoneyScreen()));
                // Get.offAllNamed(AppRoutes.loanDetailsScreen);
              },
            ),
            K.sizedBoxH,
          ],
        ),
      ),
    );
  }
}
