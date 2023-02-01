import 'package:get/get.dart';

class MoreInfoDelayController extends GetxController{

  var  selectedValue ;
  switchFunc(value){
    selectedValue=value;
    update();
  }

  final click=false.obs;

  isClicked(){
    click.value =! click.value;
    print( click.value);
  }
}