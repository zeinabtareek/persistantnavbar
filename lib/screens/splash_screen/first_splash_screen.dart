import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import '../../constants/constant.dart';
import '../Loading_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          AnimatedSplashScreen(
            backgroundColor: K.whiteColor,
            splash: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: Get.height/5.h,
                  width: Get.width/1.w,
                  child: Image.asset(
                    'assets/images/logo.png',
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 10.h,),
                // Text('سند للخدمات الماليه',style: TextStyle(fontSize: 16.sp,color: K.mainColor),)
              ],
            ),

            nextScreen:   LoadingScreen(),
            splashIconSize: 250,
            duration: 4000,
            splashTransition: SplashTransition.fadeTransition,
            animationDuration: const Duration(seconds: 1),
          ),

    );
  }
}
