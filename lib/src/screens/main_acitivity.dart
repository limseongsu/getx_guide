import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_guide_app/src/view_model/bottom_nav_view_model.dart';

class MainActivity extends StatelessWidget {
  const MainActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavViewModel>(
        init: BottomNavViewModel(),
        builder: (viewModel) {
          return Obx(() => Scaffold(
            appBar: viewModel.currentAppBar().value,
                bottomNavigationBar: BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  onTap: viewModel.onTapScreen,
                  showSelectedLabels: true,
                  showUnselectedLabels: true,
                  currentIndex: viewModel.currentScreen.value.index,
                  selectedItemColor: Colors.green,
                  unselectedItemColor: Colors.black,
                  iconSize: 32,
                  items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",),
                    BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: "setting"),
                  ],
                ),
            // body: viewModel.activityItems[viewModel.currentScreen.value.index],
            body: viewModel.activityItems[viewModel.currentScreen.value.index],
              ));
        });
  }
}
