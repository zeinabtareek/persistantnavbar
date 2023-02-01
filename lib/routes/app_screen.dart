
import 'package:get/get.dart';
 import '../screens/Loading_screen.dart';
import '../screens/bottom_nav_bar/screens/bottom_nav_bar_screen.dart';
import '../screens/contact_us/contact_us.dart';
import '../screens/loan_details_screen/loan_details_screen.dart';
import '../screens/messages_screen/messages_screen.dart';
import '../screens/more_info_screen/more_info_screen.dart';
import '../screens/splash_screen/first_splash_screen.dart';
import 'app_route.dart';

class AppScreens {
  static final screens = [
    GetPage(name: AppRoutes.homeNave, page: () =>   BottomNavBarScreen2()),
    GetPage(name: AppRoutes.loanDetailsScreen, page: () =>   LoanDetailsScreen()),
    GetPage(name: AppRoutes.loadingScreen, page: () => LoadingScreen()),
    GetPage(name: AppRoutes.conatctUsScreen, page: () =>   ContactUsScreen()),
    GetPage(name: AppRoutes.messagesScreen, page: () => const MessagesScreen()),
    GetPage(name: AppRoutes.moreInfoScreen, page: () =>   MoreInfoScreen()),
    GetPage(name: AppRoutes.splashScreen, page: () =>   SplashScreen())

  ];
}
