 import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavBarController extends GetxController {
  RxInt currentIndex = 1.obs;
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  void changeTabIndex(int index) {
    currentIndex.value = index;
  }

  @override
  Future<void> onInit() async {
    super.onInit();
  }
}
