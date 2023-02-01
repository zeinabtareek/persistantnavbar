// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:sanad/componant/custom_app_bar.dart';
// import 'package:sanad/screens/contact_us/contact_us.dart';
// import 'package:sanad/screens/login_screen/login_screen.dart';
// import 'package:sanad/screens/more_info_screen/more_info_screen.dart';
//
// import '../../../componant/custom_bottom_nav_bar.dart';
// import '../../../constants/constant.dart';
// import '../../home_screen/home_screen.dart';
// import '../controllers/bottom_nav_bar_controller.dart';
//
// class BottomNavBarScreen2 extends StatefulWidget {
//   BottomNavBarScreen2({Key? key}) : super(key: key);
//
//   static BottomNavBarController bottomNavBarController =
//   Get.put(BottomNavBarController());
//
//   @override
//   State<BottomNavBarScreen2> createState() => _BottomNavBarScreen2State();
// }
//
// class _BottomNavBarScreen2State extends State<BottomNavBarScreen2> {
//   final navKey= GlobalKey<NavigatorState>();
//
//   int _currentIndex = 1;
//
//   final _page1 = GlobalKey<NavigatorState>();
//
//   final _page2 = GlobalKey<NavigatorState>();
//
//   final _page3 = GlobalKey<NavigatorState>();
//
//   final _page4 = GlobalKey<NavigatorState>();
//
//
//
//
//
//   final List <String>title = <String>[
//     'menu'.tr,
//     'الرئيسية'.tr,
//     'track_order'.tr,
//     'المزيد'.tr,
//
//   ].obs;
//
//   List titleColors=<Color>[
//     Colors.black,
//     Colors.white,
//     Colors.white,
//     Colors.black,
//
//   ];
//   List bgColors=<Color>[
//     K.mainColor,
//     K.mainColor,
//     K.mainColor,
//     K.mainColor,
//
//
//   ];
//
//  // List <Widget> pages = [
//  //  LoginScreen(),
//  //  HomeScreen(),
//  //  ContactUsScreen(),
//  //  MoreInfoScreen(),
//  //  ];
//
//
//   @override
//   Widget build(BuildContext context) {
//     return
//         Scaffold(
//         key: BottomNavBarScreen2.bottomNavBarController.scaffoldKey,
//         body:    IndexedStack(
//           index:_currentIndex  ??0,
//           children:  [
//             Navigator(
//               key: _page1,
//               onGenerateRoute: (route) => MaterialPageRoute(
//                 settings: route,
//                 builder: (context) => LoginScreen(),
//               ),
//             ),
//             Navigator(
//               key: _page2,
//               onGenerateRoute: (route) => MaterialPageRoute(
//                 settings: route,
//                 builder: (context) =>   HomeScreen(),
//
//                ),
//             ),
//             Navigator(
//               key: _page3,
//               onGenerateRoute: (route) => MaterialPageRoute(
//                 settings: route,
//                 builder: (context) =>   ContactUsScreen(),
//               ),
//             ),
//             Navigator(
//               key: _page4,
//               onGenerateRoute: (route) => MaterialPageRoute(
//                 settings: route,
//                 builder: (context) =>  MoreInfoScreen(),
//               ),
//             ),
//           ],
//
//
//         ),
//
//         bottomNavigationBar: BottomAppBar(
//           shape: const CircularNotchedRectangle(),
//           clipBehavior: Clip.antiAlias,
//           child: BottomNavigationBar(
//             backgroundColor: Colors.white,
//             currentIndex: _currentIndex,
//             onTap: (index) {
//               if(_currentIndex!=index){
//
//               setState(() {
//                 _currentIndex = index;
//               });
//             }
//               },
//             type: BottomNavigationBarType.fixed,
//             selectedItemColor: Colors.redAccent,
//             unselectedItemColor: Colors.grey,
//             showSelectedLabels: false,
//             showUnselectedLabels: false,
//             items:   <BottomNavigationBarItem>[
//               BottomNavigationBarItem(
//                   icon: const ImageIcon(
//                     AssetImage("assets/icons/email.png"),
//                     color:K.iconColor,
//                   ),
//                   activeIcon: const ImageIcon(
//                     AssetImage("assets/icons/email.png"),
//                     color: K.kPrimaryColor,
//                   ),
//                   label: "menu".tr),
//
//               BottomNavigationBarItem(
//                   icon: ImageIcon(
//                     AssetImage("assets/icons/home-outlined-house.png"),
//                     color:K.iconColor,
//                   ),
//                   activeIcon: const ImageIcon(
//                     AssetImage("assets/icons/home-outlined-house.png"),
//                     color: K.kPrimaryColor,
//                   ),
//                   label: "الرئيسية".tr),
//
//               BottomNavigationBarItem(
//
//                   icon: const ImageIcon(
//                     AssetImage("assets/icons/contact-us.png"),
//                     color:K.iconColor,
//                   ),
//                   activeIcon: const ImageIcon(
//                     AssetImage("assets/icons/contact-us.png"),
//                     color: K.kPrimaryColor,
//                   ),
//
//
//                   label: "cart".tr),
//
//               BottomNavigationBarItem(
//                 // backgroundColor: K.iconColor,
//                   icon: const ImageIcon(
//                     AssetImage("assets/icons/ic_more_filled.png"),
//                     color:K.iconColor,
//                   ),
//                   activeIcon: ImageIcon(
//                     AssetImage("assets/icons/ic_more_filled.png"),
//                     color: K.kPrimaryColor,
//                   ),
//                   label: "more_info".tr),
//             ],
//           ),
//         ),
//       );
//   }
//  }
