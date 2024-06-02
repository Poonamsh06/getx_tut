import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/controller.dart/exampleTwo.dart';

class ExampleTwo extends StatefulWidget {
  const ExampleTwo({super.key});

  @override
  State<ExampleTwo> createState() => _ExampleTwoState();
}

OpacityController opacityCon = Get.put(OpacityController());

// double opacity = .4;

class _ExampleTwoState extends State<ExampleTwo> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example Two"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Obx(
            () => Container(
              height: 400,
              width: 400,
              color: Colors.red.withOpacity(opacityCon.opacity.value),
            ),
          ),
          Obx(
            () => Slider(
                value: opacityCon.opacity.value,
                onChanged: (onvalue) {
                  opacityCon.opacity.value = onvalue;
                  opacityCon.chnageOpacity(onvalue);
                }),
          )
        ],
      ),
    );
  }
}
