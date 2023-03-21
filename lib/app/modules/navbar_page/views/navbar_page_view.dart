import 'package:eduit/app/modules/account_info/views/account_info_view.dart';
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
    ];
  }

  List<PersistentBottomNavBarItem> _navbarItem() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.border_color_rounded),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.account_circle_outlined),
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
            onGenerateRoute: (RouteSettings settings) {
          WidgetBuilder builder;
          // Manage your route names here
          switch (settings.name) {
            case '/account-info':
              builder = (BuildContext context) => AccountInfoView();
              break;
            default:
              throw Exception('Invalid route: ${settings.name}');
          }
        }),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      Get.context!,
      screens: _buildScreen(),
      items: _navbarItem(),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
      navBarStyle: NavBarStyle.style13,
      controller: contr,
    );
  }
}
