import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_guide_app/src/screens/setting/view_model/setting_view_model.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SettingViewModel>(
      init: SettingViewModel(),
      builder: (viewModel) {
        return Container(
          width: ScreenUtil().screenWidth,
          height: ScreenUtil().screenHeight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: viewModel.moveSetUpScreen,
                child: Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black)
                  ),
                  child: const Center(child: Text("setUp"),),
                ),
              )

            ],
          ),
        );
      }
    );
  }
}
