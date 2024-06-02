import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/controller.dart/favourite_controller.dart';

class FavouritePage extends StatelessWidget {
  FavouritePage({super.key});
  FavouriteController favouriteController = Get.put(FavouriteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourite"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: favouriteController.fruitList.length,
          itemBuilder: (context, index) {
            return ListTile(
                onTap: () {
                  if (favouriteController.tempFruit.contains(
                      favouriteController.fruitList[index].toString())) {
                    favouriteController.removeTofavourite(
                        favouriteController.fruitList[index].toString());
                  } else {
                    favouriteController.addTofavourite(
                        favouriteController.fruitList[index].toString());
                  }
                },
                title: Text(
                  favouriteController.fruitList[index].toString(),
                ),
                trailing: Obx(
                  () => Icon(
                    Icons.favorite,
                    color: favouriteController.tempFruit.contains(
                            favouriteController.fruitList[index].toString())
                        ? Colors.red
                        : Colors.grey,
                  ),
                ));
          }),
    );
  }
}
