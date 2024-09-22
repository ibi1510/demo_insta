import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_app/app/modules/home/controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  final A1HomePageController controller = Get.put(A1HomePageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        title: Text("Instagram",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        actions: [
          Icon(Icons.heart_broken),
          SizedBox(width: 25),
          Icon(Icons.comment),
          SizedBox(width: 25),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Status Bar
            Container(
              height: 100,
              child: Obx(() => ListView.builder(
                    itemCount: controller.status.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                CircleAvatar(
                                  radius: 40,
                                  backgroundColor: controller.status[index]
                                              [0] ==
                                          "Ramya"
                                      ? Color(0xffdbdbda)
                                      : controller.status[index][0] == "Atshaya"
                                          ? Color(0xffdbdbda)
                                          : Color(0xffff6c81),
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        controller.status[index][1]),
                                    radius: controller.status[index][0] == "You"
                                        ? 40
                                        : 35,
                                  ),
                                ),
                                Text(controller.status[index][0])
                              ],
                            ),
                            controller.status[index][0] == "You"
                                ? Positioned(
                                    left: 55,
                                    top: 62,
                                    child: Icon(
                                      Icons.add_box,
                                      color: Colors.red,
                                    ))
                                : SizedBox(),
                          ],
                        ),
                      );
                    },
                  )),
            ),

            // Profile List
            Obx(() => ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: controller.profile.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                                backgroundImage:
                                    NetworkImage(controller.profile[index][0]),
                                radius: 24),
                            title: Text(controller.profile[index][1],
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 19)),
                            subtitle: Text(controller.profile[index][2]),
                            trailing: Icon(Icons.menu_outlined),
                          ),
                          Container(
                            height: 350,
                            width: 350,
                            child: PageView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: controller.profile[index][3].length,
                              itemBuilder: (context, indexx) {
                                return Container(
                                  height: 350,
                                  width: 350,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      image: DecorationImage(
                                          image: NetworkImage(controller
                                              .profile[index][3][indexx]),
                                          fit: BoxFit.fill)),
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: RichText(
                                text: TextSpan(children: [
                              WidgetSpan(
                                  child: Icon(
                                Icons.heart_broken_outlined,
                                color: Colors.red,
                                size: 24,
                              )),
                              TextSpan(
                                  text: controller.profile[index][4],
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15)),
                              WidgetSpan(
                                  child: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Icon(
                                  Icons.insert_comment_outlined,
                                  color: Colors.black87,
                                  size: 24,
                                ),
                              )),
                              TextSpan(
                                  text: controller.profile[index][5],
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15)),
                              WidgetSpan(
                                  child: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Icon(
                                  Icons.ios_share_outlined,
                                  color: Colors.black87,
                                  size: 24,
                                ),
                              )),
                              WidgetSpan(
                                  child: Padding(
                                padding: const EdgeInsets.only(left: 90),
                                child: Icon(
                                  Icons.save,
                                  color: Colors.black87,
                                  size: 24,
                                ),
                              )),
                            ])),
                          ),
                        ],
                      ),
                    );
                  },
                ))
          ],
        ),
      ),
    );
  }
}
