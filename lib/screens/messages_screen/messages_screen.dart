import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../componant/custom_app_bar.dart';
import '../../componant/custom_body.dart';
import '../../constants/constant.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: SanadAppBar('الرسائل', K.iconColor, Colors.white),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Directionality(
                textDirection: TextDirection.rtl,
                child:
                Padding(
                  padding:  EdgeInsets.only(top: 20.h),
                  child: ListView.builder(
                      itemCount: 7,
                      shrinkWrap: true,
                      itemBuilder: (builder,index){

                        return
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              CustomCard(
                                color: Colors.white,
                                body:  Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  Image.asset('assets/icons/email.png',color: index!=0?K.iconColor:K.kPrimaryColor,height: 30.h,width: 50.w,),
                                  Column(
                                    children: [
                                      Text('مرحباً عميلنا العزيز   ',style: TextStyle(
                                        fontSize: 16.sp,
                                        color:index!=0?K.iconColor: K.mainColor,
                                        fontWeight: FontWeight.w500,
                                      )),
                                      Text('نود إعلامكم بأن عملية سداد …',style: TextStyle(
                                        fontSize: 12.sp,
                                        color:index!=0?K.iconColor: K.mainColor,
                                        fontWeight: FontWeight.w500,
                                      )),
                                    ],
                                  ), K.sizedBoxW,
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text('  05.66 pm',  style: TextStyle(fontSize: 10.sp,color:  index!=0?K.iconColor:K.mainColor),),
                                      Text('  اليوم  Today   ', style: TextStyle(fontSize: 10.sp,color:  index!=0?K.iconColor:K.mainColor),),
                                    ],
                                  ),

                                ],
                              ),),



                             ],
                          );
                      }),
                )

            ),
          ),
        )
    );
  }
}

