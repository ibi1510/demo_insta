import 'package:get/get.dart';
import 'package:instagram_app/app/modules/home/views/bottom_bar.dart';

import '../modules/home/bindings/bottombar_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.BottomBar;

  static final routes = [
    GetPage(
      name: _Paths.BottomBar,
      page: () => BottomBar(),
      binding: HomeBinding(),
    ),
  ];
}
