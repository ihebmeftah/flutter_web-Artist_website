import 'package:get/get.dart';

class Controller extends GetxController {
  int selcted = 0;
  List<bool> navBackcolor = [true, false, false, false];
  navigation(int? index) {
    selcted = index!;
    update();
  }

  onclick(int index, int curr) {
    navBackcolor[curr] = false;
    navBackcolor[index] = true;
    update();
  }
}
