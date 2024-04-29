import 'package:get/get.dart';
import 'exports.dart';

class Routes {
  static String mainActivityRoute = "/";
  static String mainDetailRoute = "/main/detail";
  static String setUpRoute = "/setting/set_up";

  static List<GetPage> getPages() {
    return [
      GetPage(name: mainActivityRoute, page: () => const MainActivity()),
      GetPage(name: mainDetailRoute, page: () => DetailScreen()),
      GetPage(name: setUpRoute, page: () => SetUpScreen()),
    ];
  }
}
