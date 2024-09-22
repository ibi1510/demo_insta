import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_app/app/modules/home/controllers/shorts_post_controller.dart';

class ShortsPost extends StatelessWidget {
  const ShortsPost({super.key});

  @override
  Widget build(BuildContext context) {
    // Instantiate the controller
    final ShortsPostController controller = Get.put(ShortsPostController());

    return Scaffold(
      body: Obx(() => SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: GridView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: controller.gridList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 10,
                    crossAxisCount: 3,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(controller.gridList[index]),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    );
                  },
                ),
              ),
            ),
          )),
    );
  }
}
