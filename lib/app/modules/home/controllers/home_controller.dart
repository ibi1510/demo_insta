import 'package:get/get.dart';

class A1HomePageController extends GetxController {
  // Define a model structure for Profile if needed for clarity
  RxList<List<dynamic>> profile =
      <List<dynamic>>[].obs; // Using dynamic to allow for mixed types
  RxList<List<dynamic>> status =
      <List<dynamic>>[].obs; // Using dynamic to allow for mixed types

  @override
  void onInit() {
    super.onInit();
    loadProfiles();
    loadStatus();
  }

  void loadProfiles() {
    profile.value = [
      [
        "https://beingselfish.in/wp-content/uploads/2023/07/cute-girl-dp146.jpg",
        "anny_wilson",
        "Marketing Coordinator",
        [
          "https://as1.ftcdn.net/v2/jpg/02/62/00/90/1000_F_262009059_stGAlJ2ivAZULmnlXazw5FNxuA92u0Xd.jpg",
          "https://wallpapers.com/images/featured-full/cool-profile-picture-87h46gcobjl5e4xu.jpg",
        ],
        "44389",
        "26376"
      ],
      [
        "https://pics.craiyon.com/2023-06-20/89f79a8dee744596981e7417b8a7ea1d.webp",
        "hime_tanuki",
        "Web Designer",
        [
          "https://images.unsplash.com/photo-1630304565761-d6f8d5a0facd?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          "https://wallpapers.com/images/featured-full/cool-profile-picture-87h46gcobjl5e4xu.jpg",
        ],
        "44389",
        "26376"
      ],
      [
        "https://wallpapers.com/images/featured-full/cool-profile-picture-87h46gcobjl5e4xu.jpg",
        "Solo_Rider",
        "Marketing Coordinator",
        [
          "https://static.pexels.com/photos/217872/pexels-photo-217872.jpeg",
          "https://wallpapers.com/images/featured-full/cool-profile-picture-87h46gcobjl5e4xu.jpg",
        ],
        "457",
        "125"
      ],
      [
        "https://images.pexels.com/photos/3792581/pexels-photo-3792581.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "anny_wilson",
        "Marketing Coordinator",
        [
          "https://jooinn.com/images/shallow-focus-photography-of-woman-in-pink-dress.jpg",
          "https://wallpapers.com/images/featured-full/cool-profile-picture-87h46gcobjl5e4xu.jpg",
        ],
        "7458",
        "356"
      ],
    ];
  }

  // Status data with RxList<String>
  // RxList<List<String>> status = <List<String>>[].obs;

  void loadStatus() {
    status.value = [
      [
        "You",
        "https://static.pexels.com/photos/217872/pexels-photo-217872.jpeg"
      ],
      [
        "Ysf",
        "https://th.bing.com/th/id/OIP.DjJIaBIC_PkRzVDAydQsCgHaE8?rs=1&pid=ImgDetMain"
      ],
      [
        "Ramya",
        "https://3.bp.blogspot.com/-efJiVSGGWxU/VSdkiFvf2sI/AAAAAAAAB8Q/8XEr6nps7J8/s1600/New-Cute-Baby-Pics-Gallery-2015-22.jpg"
      ],
      [
        "Swetha",
        "https://jooinn.com/images/shallow-focus-photography-of-woman-in-pink-dress.jpg"
      ],
      ["Atshaya", "https://www.1zoom.me/big2/17/179945-stranger.jpg"]
    ];
  }
}
