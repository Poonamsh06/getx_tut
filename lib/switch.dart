import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/controller.dart/switch_controller.dart';

class SwitchPage extends StatelessWidget {
  SwitchController switchController = Get.put(SwitchController());
  SwitchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch"),
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text(
            "notification",
            style: TextStyle(color: Colors.blue),
          ),
          Obx(
            () => Switch(
                value: switchController.notification.value,
                onChanged: (value) {
                  switchController.notification.value = value;
                  switchController.updateSwitch(value);
                }),
          )
        ],
      ),
    );
  }
}
