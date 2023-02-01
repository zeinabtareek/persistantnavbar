import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class LoanDetailsController extends GetxController{
  final click=false.obs;

  isClicked(){
    click.value =! click.value;
    print( click.value);
  }
}