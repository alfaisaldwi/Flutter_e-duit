import 'package:eduit/app/modules/account_info/views/account_info_view.dart';
import 'package:eduit/app/modules/account_page/views/account_page_view.dart';
import 'package:eduit/app/modules/home/views/home_view.dart';
import 'package:eduit/app/modules/home_page/views/home_page_view.dart';
import 'package:eduit/app/modules/kirim_tulisan/views/kirim_tulisan_view.dart';
import 'package:eduit/app/modules/navbar_page/controllers/navbar_page_controller.dart';
import 'package:eduit/app/modules/signup_page/views/signup_page_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class NavbarPageView extends GetView<NavbarPageController> {
  final TextStyle unselectedLabelStyle = TextStyle(
      color: Colors.white.withOpacity(0.5),
      fontWeight: FontWeight.w500,
      fontSize: 12);

  final TextStyle selectedLabelStyle =
      TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12);

  final contr = PersistentTabController(initialIndex: 1);

  List<Widget> _buildScreen() {
    return [
      KirimTulisanView(),
      HomePageView(),
      AccountPageView(),
    ].obs;
  }

  List<PersistentBottomNavBarItem> _navbarItem() {
    return [
      PersistentBottomNavBarItem(
          title: 'Kirim Tulisan',
          icon: Icon(
            Icons.border_color_rounded,
            color: Color.fromRGBO(36, 54, 101, 1.0),
          ),
          activeColorPrimary: Color(0xffF8C800),
          inactiveColorPrimary: Colors.grey,
          inactiveColorSecondary: Colors.white),
      PersistentBottomNavBarItem(
          title: 'Home',
          icon: Icon(
            Icons.home,
            color: Color.fromRGBO(36, 54, 101, 1.0),
          ),
          activeColorPrimary: Color(0xffF8C800),
          inactiveColorPrimary: CupertinoColors.systemGrey),
      PersistentBottomNavBarItem(
          title: 'Akun',
          activeColorSecondary: Colors.black,
          icon: Icon(Icons.person_outline,
              color: Color.fromRGBO(36, 54, 101, 1.0)),
          activeColorPrimary: Color(0xffF8C800),
          inactiveColorPrimary: Colors.grey,
          inactiveColorSecondary: Colors.white),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() => PersistentTabView(
          Get.context!,
          screens: _buildScreen(),
          items: _navbarItem(),
          stateManagement: true,
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          navBarStyle: NavBarStyle.style3,
          decoration: NavBarDecoration(
            colorBehindNavBar: Colors.black,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 3,
                offset: Offset(0, 2), // changes position of shadow
              ),
            ],
          ),
          controller: contr,
        ));
  }
}
