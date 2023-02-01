import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:persistantnavbar/routes/app_route.dart';
import 'package:persistantnavbar/routes/app_screen.dart';
import 'constants/constant.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized(); //
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
   @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQueryData(),
      child:  ScreenUtilInit(
        designSize: new Size(428, 926),
        builder: (BuildContext, Widget ) =>
            GetMaterialApp(
              debugShowCheckedModeBanner: false,
              // home: SplashScreen(),
     theme: ThemeData(
       fontFamily: 'GenYoMinTW',
       textTheme: const TextTheme(
         headline1:
         TextStyle(fontWeight: FontWeight.normal, fontSize: 20.0),
         button: TextStyle(
             fontWeight: FontWeight.bold,
             fontSize: 14.0,
             fontFamily: 'GenYoMinTW',
             letterSpacing: 1.25),
       ),

     ).copyWith(
       scaffoldBackgroundColor: Colors.white,
       colorScheme: ThemeData().colorScheme.copyWith(primary: K.mainColor),
     ),
               initialRoute: AppRoutes.splashScreen,
              getPages: AppScreens.screens,

            ),
      ),
    );
  }

}


class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TextButton(onPressed: (){
              // Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpScreen(phoneNo: '',)));
               }, child: Text('home go to page3'))
          ],
        ),
      ),
    );
  }
}
class Page2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Page3()));
      }, child: Text('home go to page3'))
          ],
        ),
      ),
    );
  }
}
class Page3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Page1()));
      }, child: Text('page4'))
          ],
        ),
      ),
    );
  }
}
class Page4 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Page2()));
      }, child: Text('page3'))
          ],
        ),
      ),
    );
  }
}
