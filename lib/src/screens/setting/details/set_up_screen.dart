import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../config/pages/routes.dart';

class SetUpScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // SettingViewModel viewModel = Get.arguments;
    return Scaffold(
      body: SizedBox(
        width: ScreenUtil().screenWidth,
        height: ScreenUtil().screenHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            InkWell(
              onTap: () {
                Get.offNamed(Routes.mainActivityRoute);
              },
              child: Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    )),
                child: const Center(child: Text("previous"),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
