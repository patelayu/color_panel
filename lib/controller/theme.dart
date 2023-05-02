import 'package:flutter/material.dart';
import 'package:get/get.dart';

class themeController extends GetxController {
  bool dark = false;

  themeChange(bool val) {
    Get.changeTheme(Get.isDarkMode
        ? ThemeData.light().copyWith(primaryColor: Colors.black)
        : ThemeData.dark());
    dark = val;
    update();
  }
}