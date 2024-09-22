import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:get/get.dart';
// import 'package:instagram_app/app/modules/home/controllers/profile_controller.dart';
// import 'package:instagram_app/app/modules/home/views/edit_screen.dart';
//
import 'edit_screen.dart';
import 'post_screen.dart';
import 'search_screen.dart';
import 'shorts_post.dart';
//
// class Profile extends StatelessWidget {
//   Profile({super.key});
//
//   final ProfileController controller = Get.put(ProfileController());
//
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       initialIndex: 0,
//       length: 3,
//       child: Scaffold(
//         appBar: AppBar(
//           leading: Icon(Icons.account_balance),
//           title: Row(
//             children: [Text("jone_doe"), Icon(Icons.keyboard_arrow_down_sharp)],
//           ),
//           actions: [
//             Icon(Icons.add_box_outlined),
//             SizedBox(width: 15),
//             Icon(Icons.edit_outlined),
//             SizedBox(width: 10),
//             Icon(Icons.menu_open_outlined),
//             SizedBox(width: 20),
//           ],
//         ),
//         body: SingleChildScrollView(
//           child: Center(
//             child: Column(
//               children: [
//                 Obx(() => CircleAvatar(
//                       backgroundImage: NetworkImage(
//                           "https://images.pexels.com/photos/1680172/pexels-photo-1680172.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
//                       radius: 60,
//                       child: Padding(
//                         padding: const EdgeInsets.only(left: 80, top: 80),
//                         child: IconButton(
//                           onPressed: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => EditProfile()),
//                             );
//                           },
//                           icon: Icon(Icons.edit_note_rounded,
//                               color: Color(0xffff4d67)),
//                         ),
//                       ),
//                     )),
//                 Text(
//                   "John Doe",
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontWeight: FontWeight.w600,
//                       fontSize: 30),
//                 ),
//                 Text(
//                   "UI/UX Designer",
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontWeight: FontWeight.w500,
//                       fontSize: 19),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(10),
//                   child: Text(
//                     "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.",
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontWeight: FontWeight.w400,
//                         fontSize: 15),
//                   ),
//                 ),
//                 TextButton(
//                   onPressed: controller.launchWebsite,
//                   child: Text(
//                     "https://www.yourdomain.com/",
//                     style: TextStyle(color: Colors.blue, fontSize: 18),
//                   ),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Column(
//                       children: [
//                         Text("356",
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold, fontSize: 30)),
//                         Text("Posts"),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 90,
//                       child: VerticalDivider(
//                         width: 5,
//                         indent: 20,
//                         color: Colors.grey,
//                       ),
//                     ),
//                     Column(
//                       children: [
//                         Text("46,379",
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold, fontSize: 30)),
//                         Text("Followers"),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 90,
//                       child: VerticalDivider(
//                         width: 5,
//                         indent: 20,
//                         color: Colors.grey,
//                       ),
//                     ),
//                     Column(
//                       children: [
//                         Text("318",
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold, fontSize: 30)),
//                         Text("Following"),
//                       ],
//                     ),
//                   ],
//                 ),
//                 Divider(
//                   indent: 20,
//                   endIndent: 20,
//                   color: Colors.grey,
//                 ),
//                 Obx(() => Container(
//                       height: 107,
//                       child: ListView.builder(
//                         shrinkWrap: true,
//                         scrollDirection: Axis.horizontal,
//                         itemCount: controller.highlights.length,
//                         itemBuilder: (context, index) {
//                           return Container(
//                             margin: EdgeInsets.all(5),
//                             child: Stack(
//                               children: [
//                                 Column(
//                                   children: [
//                                     CircleAvatar(
//                                       radius: 40,
//                                       backgroundColor:
//                                           controller.highlights[index][0] ==
//                                                   "Add"
//                                               ? Color(0xffff6c81)
//                                               : Color(0xffff6c81),
//                                       child: CircleAvatar(
//                                         backgroundColor:
//                                             controller.highlights[index][0] ==
//                                                     "Add"
//                                                 ? Color(0xffff6c81)
//                                                 : Color(0xffff6c81),
//                                         backgroundImage: NetworkImage(
//                                             controller.highlights[index][1]),
//                                         radius: 36,
//                                       ),
//                                     ),
//                                     Text(controller.highlights[index][0])
//                                   ],
//                                 ),
//                                 controller.highlights[index][0] == "Add"
//                                     ? Positioned(
//                                         left: 28,
//                                         top: 25,
//                                         child: Icon(Icons.add_box,
//                                             color: Colors.white),
//                                       )
//                                     : SizedBox(),
//                               ],
//                             ),
//                           );
//                         },
//                       ),
//                     )),
//                 TabBar(
//                   physics: BouncingScrollPhysics(),
//                   unselectedLabelStyle: TextStyle(color: Colors.grey),
//                   indicatorColor: Color(0xffff6c81),
//                   labelColor: Color(0xffff6c81),
//                   dividerHeight: 2,
//                   tabs: [
//                     Tab(
//                       icon: Row(
//                         children: [
//                           Icon(Icons.gif_box),
//                           SizedBox(width: 5),
//                           Text("Feeds"),
//                         ],
//                       ),
//                     ),
//                     Tab(
//                       icon: Row(
//                         children: [
//                           Icon(Icons.video_camera_back_sharp),
//                           SizedBox(width: 5),
//                           Text("Shorts"),
//                         ],
//                       ),
//                     ),
//                     Tab(
//                       icon: Row(
//                         children: [
//                           Icon(Icons.person),
//                           SizedBox(width: 2),
//                           Text("Tag"),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//                 Container(
//                   height: 500,
//                   child: TabBarView(
//                     physics: BouncingScrollPhysics(),
//                     children: [
//                       PostPage(),
//                       ShortsPost(),
//                       SearchPage(),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int selectedIndex = 0;
  List Highlights = [
    ["Add", ""],
    [
      "Night",
      "https://images.pexels.com/photos/1136575/pexels-photo-1136575.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
    ],
    [
      "Friends",
      "https://w0.peakpx.com/wallpaper/956/622/HD-wallpaper-friends-forever-bff-amigas-amoled-best-friend-bestie-black-dark-friend-friendship-pinkie-promises.jpg"
    ],
    [
      "Boys",
      "https://c4.wallpaperflare.com/wallpaper/110/363/737/anime-anime-boys-wallpaper-preview.jpg"
    ],
    [
      "Hostel",
      "https://cdn.internationalstudent.com/images/stock-images/youth-hostel.jpg"
    ],
    ["Clg", "https://sadakath.ac.in/images/selectedimages/itdep_01.jpg"],
    [
      "Office",
      "https://images.unsplash.com/photo-1606857521015-7f9fcf423740?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    ],
    [
      "Trip",
      "https://resize.indiatvnews.com/en/centered/newbucket/1200_675/2018/05/trip-1526620844.jpg"
    ],
    [
      "Sad",
      "https://images.pexels.com/photos/670720/pexels-photo-670720.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
    ],
  ];
  List grideList = [
    [
      "https://plus.unsplash.com/premium_photo-1664015982598-283bcdc9cae8?q=80&w=1965&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    ],
    [
      "https://images.rawpixel.com/image_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIzLTA4L3Jhd3BpeGVsX29mZmljZV8yX3Bob3RvX29mX2FfYmxhY2tfYnVzaW5lc3NtYW5faXNvbGF0ZWRfb25fb2ZmX19lZmMxZDllNC1iNzQ5LTQ2NzMtYjRmMS1lYjI0NTBiYzNiOGRfMS5qcGc.jpg"
    ],
    [
      "https://images.rawpixel.com/image_png_600/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvMzk3LW1ja2luc2V5LTIxYTMwNzQtamlyLXJtNTExXzEtbDA5Y3ZjODQucG5n.png"
    ],
    [
      "https://images.rawpixel.com/image_png_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIzLTEwL3Jhd3BpeGVsb2ZmaWNlOF9waG90b19vZl9oYXBweV95b3VuZ19tYW5fZW5qb3lpbmdfbXVzaWNfbGlzdGVuaV9mNzAxOWZmMi00ZWE3LTQ1YTAtOWNjYi1jNTMxMTI0M2VjMDBfMi5wbmc.png"
    ],
    [
      "https://images.rawpixel.com/image_800/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvbHIvMzg3LWZlbGl4LW1nLTMwNDcuanBn.jpg"
    ],
    [
      "https://images.rawpixel.com/image_800/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvbHIvMjUxLXRlZGR5LTAyMi5qcGc.jpg"
    ]
  ];

  void _LaunchWebsite() async {
    const url = "https://www.yourdomain.com/";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print("Could not launch $url");
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.account_balance),
          title: Row(
            children: [Text("jone_doe"), Icon(Icons.keyboard_arrow_down_sharp)],
          ),
          actions: [
            Icon(Icons.add_box_outlined),
            SizedBox(
              width: 15,
            ),
            Icon(Icons.edit_outlined),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.menu_open_outlined),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Center(
                child: Column(children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/1680172/pexels-photo-1680172.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                radius: 60,
                child: Padding(
                    padding: const EdgeInsets.only(left: 80, top: 80),
                    child: IconButton(
                      onPressed: () {
                        Get.to(EditProfile());
                      },
                      icon: Icon(Icons.edit_note_rounded,
                          color: Color(0xffff4d67)),
                    )),
              ),
              Text(
                "John Doe",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 30,
                    fontStyle: FontStyle.normal),
              ),
              Text(
                "UI/UX Designer",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 19),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed \n        do eiusmod tempor incididunt ut labore et dolore.",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                ),
              ),
              TextButton(
                  onPressed: () {
                    _LaunchWebsite();
                  },
                  child: Text(
                    "https://www.yourdomain.com/",
                    style: TextStyle(color: Colors.blue, fontSize: 18),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text("356",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30)),
                      Text(("Posts")),
                    ],
                  ),
                  SizedBox(
                    height: 90,
                    child: VerticalDivider(
                      width: 5,
                      indent: 20,
                      color: Colors.grey,
                    ),
                  ),
                  Column(
                    children: [
                      Text("46,379",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30)),
                      Text("Followers"),
                    ],
                  ),
                  SizedBox(
                    height: 90,
                    child: VerticalDivider(
                      width: 5,
                      indent: 20,
                      color: Colors.grey,
                    ),
                  ),
                  Column(
                    children: [
                      Text("318",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30)),
                      Text("Following")
                    ],
                  ),
                ],
              ),
              Divider(
                indent: 20,
                endIndent: 20,
                color: Colors.grey,
              ),
              Container(
                height: 107,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: Highlights.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(5),
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundColor: Highlights[index][0] == "Add"
                                    ? Color(0xffff6c81)
                                    : Color(0xffff6c81),
                                child: CircleAvatar(
                                    backgroundColor:
                                        Highlights[index][0] == "Add"
                                            ? Color(0xffff6c81)
                                            : Color(0xffff6c81),
                                    backgroundImage:
                                        NetworkImage(Highlights[index][1]),
                                    radius: 36),
                              ),
                              Text(Highlights[index][0])
                            ],
                          ),
                          Highlights[index][0] == "Add"
                              ? Positioned(
                                  left: 28,
                                  top: 25,
                                  child: Icon(
                                    Icons.add_box,
                                    color: Colors.white,
                                  ))
                              : SizedBox(),
                        ],
                      ),
                    );
                  },
                ),
              ),
              TabBar(
                  physics: BouncingScrollPhysics(),
                  unselectedLabelStyle: TextStyle(color: Colors.grey),
                  indicatorColor: Color(0xffff6c81),
                  labelColor: Color(0xffff6c81),
                  dividerHeight: 2,
                  tabs: [
                    Tab(
                      icon: Row(
                        children: [
                          Icon(Icons.gif_box),
                          SizedBox(
                            width: 5,
                          ),
                          Text("Feeds")
                        ],
                      ),
                    ),
                    Tab(
                      icon: Row(
                        children: [
                          Icon(Icons.video_camera_back_sharp),
                          SizedBox(
                            width: 5,
                          ),
                          Text("Shorts")
                        ],
                      ),
                    ),
                    Tab(
                      icon: Row(
                        children: [
                          Icon(Icons.person),
                          SizedBox(
                            width: 2,
                          ),
                          Text("Tag")
                        ],
                      ),
                    ),
                  ]),
              Container(
                height: 500,
                child: TabBarView(physics: BouncingScrollPhysics(), children: [
                  PostPage(),
                  ShortsPost(),
                  SearchPage(),
                ]),
              ),
            ])),
          ),
        ),
      ),
    );
  }
}
