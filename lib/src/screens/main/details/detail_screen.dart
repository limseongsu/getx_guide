import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_guide_app/src/screens/main/view_model/main_screen_view_model.dart';

import '../../../config/pages/routes.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  // const DetailScreen({super.key, required this.viewModel});
  // final MainScreenViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    MainScreenViewModel viewModel = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Detail"),
      ),
      body: SizedBox(
        width: ScreenUtil().screenWidth,
        height: ScreenUtil().screenHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              viewModel.counter.value.toString(),
              style: const TextStyle(color: Colors.black, fontSize: 40),
            ),
            const SizedBox(height: 40),
            InkWell(
              onTap: () {
                // Get.offUntil(, (route) => false);

                Get.until((route) => Get.currentRoute == Routes.mainActivityRoute);

                // Get.offNamedUntil(Routes.mainActivityRoute, (route) => false,arguments: true);
              },
              child: Container(
                width: 100,
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
