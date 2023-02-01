import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
 import '../../../constants/constant.dart';
import '../../contact_us/contact_us.dart';
import '../../home_screen/home_screen.dart';
 import '../../messages_screen/messages_screen.dart';
import '../../more_info_screen/more_info_screen.dart';

PersistentTabController _controller = PersistentTabController(initialIndex: 1);

List<PersistentBottomNavBarItem> _navBarsItems() {

  return [
    PersistentBottomNavBarItem(
      iconSize:25.sp,

      icon: const ImageIcon(
        AssetImage("assets/icons/email.png"),
        color: K.kPrimaryColor,
      ),
      inactiveIcon: const ImageIcon(
        AssetImage("assets/icons/email.png"),
        color: K.iconColor,
      ),
      activeColorPrimary: K.mainColor,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      iconSize:20.sp,
      icon: const ImageIcon(
        AssetImage("assets/icons/home-outlined-house.png"),
        color: K.kPrimaryColor,
      ),
      inactiveIcon: const ImageIcon(
        AssetImage("assets/icons/home-outlined-house.png"),
        color: K.iconColor,
      ),
      activeColorPrimary: K.mainColor,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      iconSize:25.sp,

      icon: const ImageIcon(
        AssetImage("assets/icons/contact-us.png"),
        color: K.kPrimaryColor,
      ),
      inactiveIcon: const ImageIcon(
        AssetImage("assets/icons/contact-us.png"),
        color: K.iconColor,
      ),
      activeColorPrimary: K.mainColor,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(

      icon: const ImageIcon(
        AssetImage("assets/icons/ic_more_filled.png"),
        color: K.kPrimaryColor,
      ),
      inactiveIcon: const ImageIcon(
        AssetImage("assets/icons/ic_more_filled.png"),
        color: K.iconColor,
      ),
      activeColorPrimary: K.mainColor,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),


  ];
}

List<Widget> buildScreens() {
  return [
    MessagesScreen(),
    HomeScreen(),
    ContactUsScreen(),
    MoreInfoScreen(),
  ];
}

class BottomNavBarScreen2 extends StatefulWidget {
  const BottomNavBarScreen2({final Key? key}) : super(key: key);

  @override
  State<BottomNavBarScreen2> createState() => _BottomNavBarScreen2State();
}

class _BottomNavBarScreen2State extends State<BottomNavBarScreen2> {
  @override
  Widget build(final BuildContext context) {
    return  Scaffold(
        body: PersistentTabView(
          context,
          controller: _controller,
          screens: buildScreens(),
          items: _navBarsItems(),
          confineInSafeArea: true,
          backgroundColor: Colors.white,
          handleAndroidBackButtonPress: true,
          resizeToAvoidBottomInset: true,
          stateManagement: true,
          hideNavigationBarWhenKeyboardShows: true,
          decoration: NavBarDecoration(
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            colorBehindNavBar: Colors.white,
          ),
          popAllScreensOnTapOfSelectedTab: true,
          popActionScreens: PopActionScreensType.all,
          itemAnimationProperties: const ItemAnimationProperties(
          duration: Duration(milliseconds: 200),
            curve: Curves.ease,
          ),
          navBarStyle: NavBarStyle
              .style6, // Choose the nav bar style with this property.i

        ),

    );
  }
}
