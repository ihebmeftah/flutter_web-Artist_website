import 'package:flutter_web/views/screens/home.dart';
import 'package:get/get.dart';

class Approutes {
  //initialRoute
  static const home = Routes.home;

  //getPages
  static final routes = [
    GetPage(
      name: Routes.home,
      page: () => HomeScr(),
    ),
  ];
}

class Routes {
  static const home = '/home';
}
