import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/controller.dart/language_controller.dart';

LanguageController controller = Get.put(LanguageController());

CustomizedButton(String text, String text1, String text2) {
  return SizedBox(
    height: Get.height * 0.07,
    width: Get.width * 0.3,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(
          255,
          69,
          29,
          138,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Text(
        text,
        style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      onPressed: () {
        controller.chnageLanguage(text1, text2);
      },
    ),
  );
}
