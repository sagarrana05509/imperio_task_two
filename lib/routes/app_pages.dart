import 'package:get/get.dart';
import 'package:imperio_task_two/screens/color_screen/color_screen_bindings.dart';
import 'package:imperio_task_two/screens/color_screen/color_view.dart';

part 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
        name: Routes.COLORVIEW,
        page: () => const ColorView(),
        binding: ColorScreenBindings())
  ];
  static List lst = [];
}
