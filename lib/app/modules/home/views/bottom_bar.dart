import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_app/app/modules/home/controllers/bottom_bar_controller.dart';
import 'package:instagram_app/app/modules/home/views/appbar.dart';
import 'package:instagram_app/app/modules/home/views/edit_screen.dart';
import 'package:instagram_app/app/modules/home/views/home_view.dart';
import 'package:instagram_app/app/modules/home/views/profile.dart';
import 'package:instagram_app/app/modules/home/views/shorts_screen.dart';

class BottomBar extends StatelessWidget {
  final BottomBarController controller = Get.put(BottomBarController());

  final List<Widget> pages = [
    HomePage(),
    Appbar(),
    EditProfile(),
    ShortsPages(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => pages[controller.currentIndex.value]),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black45,
        selectedItemColor: Colors.red,
        selectedIconTheme: IconThemeData(color: Colors.red),
        unselectedIconTheme: IconThemeData(color: Colors.black45),
        currentIndex: controller.currentIndex.value,
        onTap: controller.changePage,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: Color(0xffffffff),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_off_outlined),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box, color: Colors.red, size: 35),
            label: "Add",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.app_shortcut_rounded),
            label: "Shorts",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      )),
    );
  }
}
