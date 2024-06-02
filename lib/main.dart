import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/example_two.dart';
import 'package:getx_tut/home.dart';
import 'package:getx_tut/localization.dart';
import 'package:getx_tut/services/translation_services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        locale: Locale("en_Us"),
        fallbackLocale: Locale("en_US"),
        translations: Languages(),
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: ExampleTwo()
        // LocalizationPage(),
        );
  }
}
