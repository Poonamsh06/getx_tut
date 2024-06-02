import 'package:get/get.dart';

class FavouriteController extends GetxController {
  RxList<String> fruitList = ["Apple", "Banana", "Peach"].obs;
  RxList tempFruit = [].obs;

  addTofavourite(String value) {
    tempFruit.add(value);
  }

  removeTofavourite(String value) {
    tempFruit.remove(value);
  }
}
