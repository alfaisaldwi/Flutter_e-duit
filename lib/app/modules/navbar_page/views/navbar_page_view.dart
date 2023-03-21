import 'package:eduit/app/modules/account_page/views/account_page_view.dart';
import 'package:eduit/app/modules/home/views/home_view.dart';
import 'package:eduit/app/modules/home_page/views/home_page_view.dart';
import 'package:eduit/app/modules/kirim_tulisan/views/kirim_tulisan_view.dart';
import 'package:eduit/app/modules/navbar_page/controllers/navbar_page_controller.dart';
import 'package:eduit/app/modules/signup_page/views/signup_page_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class NavbarPageView extends GetView<NavbarPageController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
  // final TextStyle unselectedLabelStyle = TextStyle(
  //     color: Colors.white.withOpacity(0.5),
  //     fontWeight: FontWeight.w500,
  //     fontSize: 12);

  // final TextStyle selectedLabelStyle =
  //     TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12);

  // buildBottomNavigationMenu(context, landingPageController) {
  //   return Obx(() => MediaQuery(
  //       data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
  //       child: SizedBox(
  //         height: 54,
  //         child: BottomNavigationBar(
  //           showUnselectedLabels: true,
  //           showSelectedLabels: true,
  //           onTap: landingPageController.changeTabIndex,
  //           currentIndex: landingPageController.tabIndex.value,
  //           backgroundColor: Colors.white,
  //           unselectedItemColor: Color.fromRGBO(36, 54, 101, 1.0),
  //           selectedItemColor: Colors.yellow,
  //           unselectedLabelStyle: unselectedLabelStyle,
  //           selectedLabelStyle: selectedLabelStyle,
  //           items: [
  //             BottomNavigationBarItem(
  //               icon: Container(
  //                 margin: EdgeInsets.only(bottom: 7),
  //                 child: Icon(
  //                   Icons.border_color_rounded,
  //                   size: 20.0,
  //                 ),
  //               ),
  //               label: 'Kirim Tulisan',
  //               backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
  //             ),
  //             BottomNavigationBarItem(
  //               icon: Container(
  //                 margin: EdgeInsets.only(bottom: 7),
  //                 child: Icon(
  //                   Icons.home,
  //                   size: 20.0,
  //                 ),
  //               ),
  //               label: 'Home',
  //               backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
  //             ),
  //             BottomNavigationBarItem(
  //               icon: Container(
  //                 margin: EdgeInsets.only(bottom: 7),
  //                 child: Icon(
  //                   Icons.account_circle_outlined,
  //                   size: 20.0,
  //                 ),
  //               ),
  //               label: 'Akun',
  //               backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
  //             ),
  //           ],
  //         ),
  //       )));
  // }

  // @override
  // Widget build(BuildContext context) {
  //   final NavbarPageController landingPageController =
  //       Get.put(NavbarPageController(), permanent: false);
  //   return Scaffold(
  //     bottomNavigationBar:
  //         buildBottomNavigationMenu(context, landingPageController),
  //     body: Obx(
  //       () => IndexedStack(
  //         index: landingPageController.tabIndex.value,
  //         children: [KirimTulisanView(), HomePageView(), AccountPageView()],
  //       ),
  //     ),
  //   );
  // }
}
