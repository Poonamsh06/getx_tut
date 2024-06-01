import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/UiHelper.dart';
import 'package:getx_tut/controller.dart/language_controller.dart';

class LocalizationPage extends StatelessWidget {
  LocalizationPage({super.key});
  LanguageController controller = Get.put(LanguageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Language Change with GetX"),
        centerTitle: true,
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("message".tr),
            Text("name".tr),
            SizedBox(height: Get.height * 0.06),
            CustomizedButton("English", "en", "US"),
            SizedBox(height: Get.height * 0.06),
            CustomizedButton("Hindi", "hi", "IN"),
            SizedBox(height: Get.height * 0.06),
            CustomizedButton("Punjabi", "pa", "IN"),
            SizedBox(height: Get.height * 0.06),
            CustomizedButton("Urdu", "ur", "PK"),
          ]),
    );
  }
}
