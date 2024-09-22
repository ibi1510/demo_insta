// import 'package:get/get.dart';
// import 'package:url_launcher/url_launcher.dart';
//
// class ProfileController extends GetxController {
//   var selectedIndex = 0.obs;
//
//   var highlights = [
//     ["Add", ""],
//     [
//       "Night",
//       "https://images.pexels.com/photos/1136575/pexels-photo-1136575.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
//     ],
//     [
//       "Friends",
//       "https://w0.peakpx.com/wallpaper/956/622/HD-wallpaper-friends-forever-bff-amigas-amoled-best-friend-bestie-black-dark-friend-friendship-pinkie-promises.jpg"
//     ],
//     [
//       "Boys",
//       "https://c4.wallpaperflare.com/wallpaper/110/363/737/anime-anime-boys-wallpaper-preview.jpg"
//     ],
//     [
//       "Hostel",
//       "https://cdn.internationalstudent.com/images/stock-images/youth-hostel.jpg"
//     ],
//     ["Clg", "https://sadakath.ac.in/images/selectedimages/itdep_01.jpg"],
//     [
//       "Office",
//       "https://images.unsplash.com/photo-1606857521015-7f9fcf423740?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
//     ],
//     [
//       "Trip",
//       "https://resize.indiatvnews.com/en/centered/newbucket/1200_675/2018/05/trip-1526620844.jpg"
//     ],
//     [
//       "Sad",
//       "https://images.pexels.com/photos/670720/pexels-photo-670720.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
//     ],
//   ].obs;
//
//   var gridList = [
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
//   ].obs;
//
//   void launchWebsite() async {
//     const url = "https://www.yourdomain.com/";
//     if (await canLaunch(url)) {
//       await launch(url);
//     } else {
//       print("Could not launch $url");
//     }
//   }
// }
