import 'package:get/get_state_manager/get_state_manager.dart';

class ButtonController extends GetxController {
  int _count = 0;
  int get count => _count;

  void increment() {
    _count += 1;
    update();
  }

  void decrement() {
    _count -= 1;
    update();
  }
}
