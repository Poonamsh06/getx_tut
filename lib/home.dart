import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.snackbar("Hiiiii", "My name is Poonam.");
          },
        ));
  }
}
