import 'package:get/get.dart';

import 'exports.dart';

class Routes {
  static String mainScreenRoute = "/";
  static String detailScreenRoute = "/detail";

  static List<GetPage> getPages() {
    return [
      GetPage(name: mainScreenRoute, page: () => MainScreen()),
      GetPage(name: detailScreenRoute, page: () => DetailScreen()),
    ];
  }
}
