 import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../constants/constant.dart';
import '../screens/bottom_nav_bar/controllers/bottom_nav_bar_controller.dart';

class SanadBottomNavBar extends StatelessWidget {
  final BottomNavBarController bottomNavBarController;

  const SanadBottomNavBar({
    Key? key,
    required this.bottomNavBarController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return BottomNavigationBar(
        items: [
    BottomNavigationBarItem(
        icon: const ImageIcon(
          AssetImage("assets/icons/email.png"),
          color:K.iconColor,
        ),
        activeIcon: const ImageIcon(
          AssetImage("assets/icons/email.png"),
          color: K.kPrimaryColor,
        ),
              label: "menu".tr),

          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/icons/home-outlined-house.png"),
                color:K.iconColor,
              ),
              activeIcon: const ImageIcon(
                AssetImage("assets/icons/home-outlined-house.png"),
                color: K.kPrimaryColor,
              ),
              label: "الرئيسية".tr),

          BottomNavigationBarItem(

              icon: const ImageIcon(
                AssetImage("assets/icons/contact-us.png"),
                color:K.iconColor,
              ),
              activeIcon: const ImageIcon(
                AssetImage("assets/icons/contact-us.png"),
                color: K.kPrimaryColor,
              ),


              label: "cart".tr),

          BottomNavigationBarItem(
              // backgroundColor: K.iconColor,
              icon: ImageIcon(
                AssetImage("assets/icons/ic_more_filled.png"),
                color:K.iconColor,
              ),
              activeIcon: ImageIcon(
                AssetImage("assets/icons/ic_more_filled.png"),
                color: K.kPrimaryColor,
              ),
              label: "more_info".tr),
        ],
        currentIndex: bottomNavBarController.currentIndex.value,
        iconSize: 30.r,
        selectedFontSize: 15.sp,

        backgroundColor:K.iconColor,
        // unselectedFontSize: 12.sp,

        onTap: (index) {

          bottomNavBarController.changeTabIndex(index);
        },
      );
    });
  }
}
