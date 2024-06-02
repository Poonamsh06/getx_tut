import 'package:get/get.dart';

class SwitchController extends GetxController {
  RxBool notification = false.obs;

  updateSwitch(bool value) {
    notification.value = value;
  }
}
