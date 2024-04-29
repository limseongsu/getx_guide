import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BackgroundServices extends FullLifeCycleController {




  /*App 의 lifeCycle 에 따른 동작
   ex 1.) background 에서 notification 처리
   ex 2.) foreground 에서 notification 처리 => android 에서 추가로 사용 해야 하는 library local_notification
   ex 3.) dynamicLink 를 lifeCycle 에 따른 처리 필요
   - foreground 에서는 해당 noti 가 생기면 해당 화면으로 전환 등
   - background 에서는 로그인(있을 경우) 자동 로그인 체크 및 invite code 를 통한 App 가입 등
  */
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch(state) {
      case AppLifecycleState.detached:
        // TODO: Handle this case.
      case AppLifecycleState.resumed:
        // TODO: Handle this case.
      case AppLifecycleState.inactive:
        // TODO: Handle this case.
      case AppLifecycleState.hidden:
        // TODO: Handle this case.
      case AppLifecycleState.paused:
        // TODO: Handle this case.
    }
    super.didChangeAppLifecycleState(state);
  }



}