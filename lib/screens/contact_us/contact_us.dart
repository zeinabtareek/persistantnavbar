import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../componant/custom_app_bar.dart';
import '../../constants/constant.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: SanadAppBar('التواصل', K.iconColor, Colors.white),

        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            K.sizedBoxH,

            Text('أرقام التواصل',style: K.textStyle20B,),
            Text('07xx xxxx xxx',style: K.textStyle20B,),
            Text('07xx xxxx xxل',style: K.textStyle20B,),
            K.sizedBoxH,

            Text('تابعنا على…ل',style: K.textStyle20B,),


          ],
      ),
        )
    );
  }
}
