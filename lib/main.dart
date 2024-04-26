import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_guide_app/src/config/pages/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    /// screenUtil start point
    return ScreenUtilInit(
      /// getX start point
      child: GetMaterialApp(
        /// config/pages/routes
        getPages: Routes.getPages(),
        initialRoute: '/',
        title: '',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),

      ),
    );
  }
}
