import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageController extends GetxController {
  chnageLanguage(String countrycode, String language) {
    Get.updateLocale(Locale(countrycode, language));
  }
}
