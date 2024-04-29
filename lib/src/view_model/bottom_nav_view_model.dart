import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../screens/main/main_screen.dart';
import '../screens/setting/setting_screen.dart';

enum Activity {
  main,
  setting;
}

class BottomNavViewModel extends GetxController {
  Rx<Activity> currentScreen = Activity.main.obs;

  List<String> titles = [
    "Main",
    "Setting",
  ];



  @override
  void onInit() {
    super.onInit();
  }



  List<Widget> activityItems = [const MainScreen(), const SettingScreen()];

  Rx<AppBar> currentAppBar() {
    Rx<AppBar> defaultAppBar = AppBar(
      title: Text(titles[currentScreen.value.index]),
      centerTitle: true,
    ).obs;
    return defaultAppBar;
  }

  void onTapScreen(int selectIndex) {
    currentScreen.value = Activity.values[selectIndex];
  }
}
