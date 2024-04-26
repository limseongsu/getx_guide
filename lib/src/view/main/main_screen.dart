import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_guide_app/src/view/main/view_model/main_screen_view_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainScreenViewModel>(
        init: MainScreenViewModel(),
        builder: (viewModel) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Main"),
              centerTitle: true,
            ),
            body: Container(
              padding: const EdgeInsets.all(16),
              width: ScreenUtil().screenWidth,
              height: ScreenUtil().screenHeight,
              child: Column(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Obx(() => Text(
                              viewModel.counter.value.toString(),
                              style: const TextStyle(fontSize: 28, color: Colors.black),
                            )),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(  onPressed: viewModel.incrementButton , icon: const Icon(Icons.add,size: 40,color: Colors.green,)),
                            IconButton(  onPressed: viewModel.decreaseButton , icon: const Icon(Icons.remove,size: 40,color: Colors.red,)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: viewModel.goDetailScreen,
                    child: Obx(() => Container(
                          width: ScreenUtil().screenWidth,
                          height: ScreenUtil().screenHeight * 0.1,
                          color: viewModel.isChanged.isTrue ? Colors.green : Colors.grey,
                          child: const Center(
                            child: Text(
                              "Go",
                              style: TextStyle(fontSize: 24, color: Colors.black),
                            ),
                          ),
                        )),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
