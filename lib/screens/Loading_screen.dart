import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import '../constants/constant.dart';
import 'bottom_nav_bar/screens/bottom_nav_bar_screen.dart';


class LoadingScreen extends StatefulWidget {
  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

startTimer(){
  Timer(Duration(seconds: 3), ()async
  {

    Get.offAll(BottomNavBarScreen2());

    }
  );
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        body:Center(
          child:  Container(
              height: 20,
              child:
              SpinKitWave(
                itemBuilder: (BuildContext context, int index) {
                  return DecoratedBox(
                    decoration: BoxDecoration(
                      color: index.isEven ? K.mainColor: K.mainColor.withOpacity(.8),
                    ),
                  );
                },
              )
          ),
        ),
      );
  }
}
