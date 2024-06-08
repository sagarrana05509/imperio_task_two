import 'package:get/get.dart';
import 'package:imperio_task_two/screens/color_screen/color_screen_controller.dart';

class ColorScreenBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ColorScreenController>(()=> ColorScreenController());
  }
}