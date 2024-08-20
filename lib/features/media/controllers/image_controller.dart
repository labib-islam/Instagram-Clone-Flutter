import 'package:get/get.dart';

class ImageController extends GetxController {
  final imageCurrentIndex = 0.obs;

  void updateImageIndicator(index) {
    imageCurrentIndex.value = index;
  }
}