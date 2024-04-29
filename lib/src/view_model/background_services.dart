import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

/*App 의 lifeCycle 에 따른 동작
   ex 1.) background 에서 notification 처리
   ex 2.) foreground 에서 notification 처리 => android 에서 추가로 사용 해야 하는 library local_notification
   ex 3.) dynamicLink 를 lifeCycle 에 따른 처리 필요
   - foreground 에서는 해당 noti 가 생기면 해당 화면으로 전환 등
   - background 에서는 로그인(있을 경우) 자동 로그인 체크 및 invite code 를 통한 App 가입 등
  */

class BackgroundServices extends FullLifeCycleController with WidgetsBindingObserver {
  //WidgetsBindingObserver : 앱 생명주기 이벤트를 감지하기 위한 인터페이스
  @override
  void onInit() {
    // observer 추가를 통한 didChangeAppLifecycleState 사용
    WidgetsBinding.instance.addObserver(this);
    super.onInit();
  }

  @override
  void onClose() {
    WidgetsBinding.instance.removeObserver(this);
    super.onClose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.detached:
        Logger().d("detached");
      case AppLifecycleState.resumed:
        Logger().d("resumed");
      case AppLifecycleState.inactive:
        Logger().d("inactive");
      case AppLifecycleState.hidden:
        Logger().d("hidden");
      case AppLifecycleState.paused:
        Logger().d("paused");
    }
    super.didChangeAppLifecycleState(state);
  }
}
