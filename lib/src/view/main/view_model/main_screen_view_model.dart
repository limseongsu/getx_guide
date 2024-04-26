import 'package:get/get.dart';
import 'package:getx_guide_app/src/config/pages/routes.dart';

class MainScreenViewModel extends GetxController {
  //getter lint error

  RxInt counter = 0.obs;

  RxBool isChanged = false.obs;

  @override
  void onInit() {
    counter.listen((value) {
      if (counter.value > 0) {
        isChanged.value = true;
      } else {
        isChanged.value = false;
      }
    });
    super.onInit();
  }

  void incrementButton() {
    counter.value++;
  }
  void decreaseButton() {
    if(counter.value >0){
    counter.value--;
    }
  }

  Future<void> goDetailScreen() async {
    if(isChanged.isTrue) {
      await Get.toNamed(Routes.detailScreenRoute, arguments: counter.value)?.then((_) => counter.value = 0);
    }
  }


}
