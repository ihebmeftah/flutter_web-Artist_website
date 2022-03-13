import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeServices {
  String key = 'isDARK';
  final GetStorage boxStorage = GetStorage();
  saveInbox(bool isDark) {
    boxStorage.write(key, isDark);
  }

  bool getFrombox() {
    return boxStorage.read(key) ?? false;
  }

  ThemeMode get theme => getFrombox() ? ThemeMode.dark : ThemeMode.light;

  void changeTheme() {
    Get.changeThemeMode(getFrombox() ? ThemeMode.light : ThemeMode.dark);
    saveInbox(!getFrombox());
  }
}
