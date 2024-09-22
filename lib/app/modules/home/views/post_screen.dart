import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_app/app/modules/home/controllers/post_screen_controller.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Use lazy initialization to instantiate the controller when it's needed
    Get.lazyPut<PostPageController>(() => PostPageController());
    final PostPageController controller = Get.put(PostPageController());

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Obx(() {
            // Wrap only the GridView in Obx as it depends on observable data (gridList)
            return GridView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: controller.gridList.length, // Observable list
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 20,
                crossAxisSpacing: 10,
                crossAxisCount: 3,
              ),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          controller.gridList[index]), // Observable list usage
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                );
              },
            );
          }),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
//
// class PostPage extends StatefulWidget {
//   const PostPage({super.key});
//
//   @override
//   State<PostPage> createState() => _PostPageState();
// }
//
// class _PostPageState extends State<PostPage> {
//   List grideList = [
//     [
//       "https://plus.unsplash.com/premium_photo-1664015982598-283bcdc9cae8?q=80&w=1965&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
//     ],
//     [
//       "https://images.rawpixel.com/image_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIzLTA4L3Jhd3BpeGVsX29mZmljZV8yX3Bob3RvX29mX2FfYmxhY2tfYnVzaW5lc3NtYW5faXNvbGF0ZWRfb25fb2ZmX19lZmMxZDllNC1iNzQ5LTQ2NzMtYjRmMS1lYjI0NTBiYzNiOGRfMS5qcGc.jpg"
//     ],
//     [
//       "https://images.rawpixel.com/image_png_600/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvMzk3LW1ja2luc2V5LTIxYTMwNzQtamlyLXJtNTExXzEtbDA5Y3ZjODQucG5n.png"
//     ],
//     [
//       "https://images.rawpixel.com/image_png_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIzLTEwL3Jhd3BpeGVsb2ZmaWNlOF9waG90b19vZl9oYXBweV95b3VuZ19tYW5fZW5qb3lpbmdfbXVzaWNfbGlzdGVuaV9mNzAxOWZmMi00ZWE3LTQ1YTAtOWNjYi1jNTMxMTI0M2VjMDBfMi5wbmc.png"
//     ],
//     [
//       "https://images.rawpixel.com/image_800/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvbHIvMzg3LWZlbGl4LW1nLTMwNDcuanBn.jpg"
//     ],
//     [
//       "https://images.rawpixel.com/image_800/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvbHIvMjUxLXRlZGR5LTAyMi5qcGc.jpg"
//     ]
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Container(
//             child: GridView.builder(
//               physics: BouncingScrollPhysics(),
//               shrinkWrap: true,
//               // scrollDirection: Axis.horizontal,
//               itemCount: grideList.length,
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   mainAxisSpacing: 20, crossAxisSpacing: 10, crossAxisCount: 3),
//               itemBuilder: (context, index) {
//                 return Container(
//                   // height: 250,
//                   // width: 200,
//                   decoration: BoxDecoration(
//                       image: DecorationImage(
//                           image: NetworkImage(grideList[index][0]),
//                           fit: BoxFit.cover),
//                       borderRadius: BorderRadius.circular(10)),
//                 );
//               },
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
