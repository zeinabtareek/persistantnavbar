import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../componant/custom_app_bar.dart';
import '../../componant/custom_button.dart';
import '../../constants/constant.dart';
import '../loan_details_screen/loan_details_screen.dart';
import '../more_info_delay_screen/more_info_delay_screen.dart';
import 'controller/home_screen_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final controller = Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: SanadAppBar('الرئيسية'.tr, Colors.white, K.mainColor),
        body: LayoutBuilder(
            builder: (context, constraints) => Stack(children: [
                  Positioned(
                    left: -constraints.maxWidth * .1,
                    right: -constraints.maxWidth * .1,
                    bottom: Get.height / 3.h,
                    // you may need to change value
                    child: Image.asset(
                      'assets/images/blue_bg.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Positioned(
                      top: -5,
                      right: 0,
                      left: 0,
                      child: SingleChildScrollView(
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              K.sizedBoxH,
                              Obx(() => CarouselSlider(
                                    options: CarouselOptions(
                                        autoPlay: false,
                                        height: 220.h,
                                        viewportFraction: 1,
                                        onPageChanged: (index, reason) {
                                          controller.currentImageIndex.value =
                                              index;
                                        }),
                                    items: controller.homeAdsImages
                                        .map(
                                          (item) => Image.asset(item,color: Colors.white,),
                                    ).toList(),
                                  )),
                              SizedBox(
                                height: 20.h,
                              ),
                              Obx(() => AnimatedSmoothIndicator(
                                    activeIndex:
                                        controller.currentImageIndex.value,
                                    count: 3,
                                    effect: ExpandingDotsEffect(
                                        dotHeight: 5,
                                        dotWidth: 5,
                                        activeDotColor: K.whiteColor,
                                        dotColor: K.whiteColor.withOpacity(.4)),
                                  )),
                              ...List.generate(
                                2, (index) => Container(
                                   padding: EdgeInsets.all(5.sp),
                                  width: Get.width / 1.1,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    elevation: 5,
                                    child: Padding(
                                      padding: EdgeInsets.all(5.sp),
                                      child: Container(
                                        width: K.width,
                                        height: Get.height / 15.h,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              '........   ',
                                              style: K.textStyle16,
                                            ),
                                            Text(  ' : data  ',  style: K.textStyle16,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              K.sizedBoxH,
                              Obx(
                                () => Button(
                                  height: Get.height / 20.h,
                                  isFramed: false,
                                  isClicked: controller.click.value,
                                  size: 300,
                                  text: "Click 1",
                                  onPressed: () {
                                    controller.isClicked();
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                MoreInfoDelayScreen()));
                                  },
                                ),
                              ),
                              Button(
                                height: Get.height / 20.h,
                                isFramed: false,
                                isClicked: true,
                                size: 300,
                                text: "Click 2",
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                      ))
                ])));
  }
}
