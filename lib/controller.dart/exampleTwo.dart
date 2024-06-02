import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class OpacityController extends GetxController {
  RxDouble opacity = 0.4.obs;

  chnageOpacity(double value) {
    opacity.value = value;
  }
}
