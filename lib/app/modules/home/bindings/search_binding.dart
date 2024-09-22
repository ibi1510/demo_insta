import 'package:get/get.dart';
import 'package:instagram_app/app/modules/home/controllers/search_screen_controller.dart';

class SearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppSearchController>(() => AppSearchController());
  }
}
