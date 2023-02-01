import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class MoreInfoController extends GetxController{

  final clicked1=false.obs;

  isClicked(){
    clicked1.value= !clicked1.value;
  }
  final clicked2=false.obs;

  isClicked2(){
    clicked2.value= !clicked2.value;
  }
  final clicked3=false.obs;

  isClicked3(){
    clicked3.value= !clicked3.value;
  }


}