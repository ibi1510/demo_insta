import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_app/app/modules/home/controllers/search_screen_controller.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize the controller here
    final AppSearchController controller = Get.put(AppSearchController());

    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Obx(() => ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: controller.randomItems.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          controller.randomItems[index][0],
                        ),
                        radius: 30,
                      ),
                      title: Text(
                        controller.randomItems[index][1],
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      subtitle: Text(
                        controller.randomItems[index][2],
                      ),
                      trailing: index == 0 || index == 5
                          ? Container(
                              height: 40,
                              width: 75,
                              decoration: BoxDecoration(
                                color: Color(0xffff4d67),
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Center(
                                child: Text(
                                  "Follow",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ),
                            )
                          : Container(
                              height: 40,
                              width: 85,
                              decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Center(
                                child: Text(
                                  "Following",
                                  style: TextStyle(
                                      color: Color(0xffff4d67), fontSize: 12),
                                ),
                              ),
                            ),
                    ),
                  ],
                ),
              );
            },
          )),
    );
  }
}
