import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_tut/controller.dart/language_controller.dart';

class CounterController extends GetxController {
  final counter = 0.obs;
  increamentCounter() {
    counter.value++;
  }
}
