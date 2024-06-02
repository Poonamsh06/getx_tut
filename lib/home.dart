import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/controller.dart/counter_Controller.dart';

class Home extends StatelessWidget {
  final CounterController controller = Get.put(CounterController());
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Obx(() => Center(child: Text(controller.counter.value.toString())))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            controller.increamentCounter();
            // Get.snackbar("Hiiiii", "My name is Poonam.");
          },
        ));
  }
}
