import 'package:get/get.dart';

class AppSearchController extends GetxController {
  // Define an observable list of random items
  var randomItems = <List<String>>[].obs;

  @override
  void onInit() {
    // Initialize the list with data
    randomItems.addAll([
      [
        "https://i.pinimg.com/736x/14/4a/c0/144ac0220db7d62af01e3b62f0c81636.jpg",
        "angelinaa_",
        "Web Designer"
      ],
      [
        "https://miro.medium.com/v2/resize:fit:542/format:webp/1*WV732qLJabiEsXrwjdpISw.jpeg",
        "angelina_tamaraa",
        "President of sales"
      ],
      [
        "https://instacaptionsforall.in/wp-content/uploads/2024/01/9-3.jpg",
        "angelina_77",
        "Web Designer"
      ],
      [
        "https://miro.medium.com/v2/resize:fit:542/format:webp/1*WV732qLJabiEsXrwjdpISw.jpeg",
        "angelina_angle",
        "Nursing Assistant"
      ],
      [
        "https://pxbar.com/wp-content/uploads/2023/10/dp-pic-for-girl.jpg",
        "angelina_hawky",
        "Dog Trainer"
      ],
      [
        "https://i0.wp.com/earnurl.in/wp-content/uploads/2023/03/attitude-girl-dp-hd-2.jpg?w=864&ssl=1",
        "angelina_cooper",
        "Web Designer"
      ],
      [
        "https://govtexamlive.com/wp-content/uploads/2024/01/girls-dp27.jpg",
        "angelina_nguyen",
        "Developer"
      ],
      [
        "https://i0.wp.com/earnurl.in/wp-content/uploads/2023/03/attitude-girl-dp-hd-2.jpg?w=864&ssl=1",
        "angelina_lane",
        "Designer"
      ],
      [
        "https://girlsdpreal.in/wp-content/uploads/2023/12/photo-32.png",
        "angelinaa_ibi",
        "Web Designer"
      ],
    ]);
    super.onInit();
  }
}
