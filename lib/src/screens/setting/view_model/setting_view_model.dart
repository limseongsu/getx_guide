import 'package:get/get.dart';

import '../../../config/pages/routes.dart';

class SettingViewModel extends GetxController {

  @override
  void onInit() {
    super.onInit();
  }


  void moveSetUpScreen() {
    Get.toNamed(Routes.setUpRoute, arguments: this);
  }

}