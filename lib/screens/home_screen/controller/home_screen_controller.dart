import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomeScreenController extends GetxController{

  final currentImageIndex = 0.obs;
  List homeAdsImages = [
    'assets/images/logo.png',
    'assets/images/logo.png',
    'assets/images/logo.png',

  ].obs;

  final click=false.obs;

  isClicked(){
    click.value =! click.value;
    print( click.value);
  }
  @override
  void dispose() {
    click.value=false;

  }
}