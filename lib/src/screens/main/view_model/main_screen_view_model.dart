import 'package:get/get.dart';
import 'package:getx_guide_app/src/config/pages/routes.dart';
import 'package:getx_guide_app/src/screens/main/details/detail_screen.dart';
import 'package:logger/logger.dart';

class MainScreenViewModel extends GetxController {
  //getter lint error

  RxInt counter = 0.obs;

  RxBool isChanged = false.obs;



  @override
  void onInit() async {
    ///Rx 타입이 좋은이유 : listen 을 걸 수 있어요
    counter.listen((value) {
      if (value > 0) {
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

  Future<void> moveDetailScreen() async {
    if(isChanged.isTrue) {
      /// then => 라우팅 된 페이지가 종료된 시점에 걸어줄 수 있는 이벤트
      await Get.toNamed(Routes.mainDetailRoute,arguments: this, )?.then((value) => counter.value = 0);
    }
  }


}
