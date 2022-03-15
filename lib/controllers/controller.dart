import 'package:get/get.dart';

class Controller extends GetxController {
  int selcted = 0;
  int curr = 0;
  List<bool> navBackcolor = [true, false, false, false];
  navigation(int? index) {
    selcted = index!;
    navBackcolor[curr] = false;
    navBackcolor[selcted] = true;
    curr = selcted;
    update();
  }
}
