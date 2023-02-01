import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../componant/custom_app_bar.dart';
import '../../componant/custom_body.dart';
import '../../constants/constant.dart';
import 'controller/more_info_controller.dart';

class MoreInfoScreen extends StatelessWidget {
  MoreInfoScreen({Key? key}) : super(key: key);
  final controller = Get.put(MoreInfoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SanadAppBar('المزيد', K.iconColor, Colors.white),

      body: Directionality(
        textDirection: TextDirection.ltr,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              K.sizedBoxH,
              Obx(
                () => CustomCard(
                  color: controller.clicked1.value
                      ? K.mainColor
                      : Colors.white,
                  body: InkWell(
                      onTap: () {
                        controller.isClicked();
                      },
                      child: Row(
                        children: [
                          K.sizedBoxW,
                          Text(
                            'Option1',
                            style:  TextStyle(
                                fontWeight: FontWeight.w500,
                                color: controller.clicked1.value

                                ?Colors.white:K.mainColor,
                                fontSize: 20.sp),
                          ),
                        ],
                      )),
                ),
              ),
              Obx(
                () => CustomCard(
                    color: controller.clicked2.value ?K.kPrimaryColor:K.whiteColor,
                    body: InkWell(
                      onTap: () {
                        controller.isClicked2();

                      },
                      child: Row(
                        children: [
                          K.sizedBoxW,
                          Text(
                            'Option2',
                            style: TextStyle(
                                color:controller.clicked2.value ? Colors.white:K.kPrimaryColor,

                                 fontWeight: FontWeight.w700,
                                fontSize: 20.sp),
                          ),
                        ],
                      ),
                    )),
              ),
              Obx(() => CustomCard(
                  color:controller.clicked3.value ?Colors.blueAccent: Colors.white,
                  body: InkWell(
                      onTap: () {
                        controller.isClicked3();
                      },
                      child: Row(
                        children: [
                          K.sizedBoxW,
                          Text(
                            'Option3',
                            style: TextStyle(
                                color:controller.clicked3.value ?Colors.white: Colors.blueAccent,
                                fontWeight: FontWeight.w700,
                                fontSize: 20.sp),
                          ),
                        ],
                      ))))
            ],
          ),
        ),
      ),
    );
  }
}
