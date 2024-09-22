import 'package:get/get.dart';
import 'package:instagram_app/app/modules/home/controllers/bottom_bar_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomBarController>(
      () => BottomBarController(),
    );
  }
}
