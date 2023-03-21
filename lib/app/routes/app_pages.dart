import 'package:get/get.dart';

import 'package:eduit/app/modules/account_page/bindings/account_page_binding.dart';
import 'package:eduit/app/modules/account_page/views/account_page_view.dart';
import 'package:eduit/app/modules/home/bindings/home_binding.dart';
import 'package:eduit/app/modules/home/views/home_view.dart';
import 'package:eduit/app/modules/home_page/bindings/home_page_binding.dart';
import 'package:eduit/app/modules/home_page/views/home_page_view.dart';
import 'package:eduit/app/modules/kirim_tulisan/bindings/kirim_tulisan_binding.dart';
import 'package:eduit/app/modules/kirim_tulisan/views/kirim_tulisan_view.dart';
import 'package:eduit/app/modules/login_page/bindings/login_page_binding.dart';
import 'package:eduit/app/modules/login_page/views/login_page_view.dart';
import 'package:eduit/app/modules/navbar_page/bindings/navbar_page_binding.dart';
import 'package:eduit/app/modules/navbar_page/views/navbar_page_view.dart';
import 'package:eduit/app/modules/signup_page/bindings/signup_page_binding.dart';
import 'package:eduit/app/modules/signup_page/views/signup_page_view.dart';
import 'package:eduit/splash_binding.dart';
import 'package:eduit/splashscreen.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASHSCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASHSCREEN,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_PAGE,
      page: () => LoginPageView(),
      binding: LoginPageBinding(),
    ),
    GetPage(
      name: _Paths.ACCOUNT_PAGE,
      page: () => AccountPageView(),
      binding: AccountPageBinding(),
    ),
    GetPage(
      name: _Paths.KIRIM_TULISAN,
      page: () => KirimTulisanView(),
      binding: KirimTulisanBinding(),
    ),
    GetPage(
      name: _Paths.HOME_PAGE,
      page: () => HomePageView(),
      binding: HomePageBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP_PAGE,
      page: () => SignupPageView(),
      binding: SignupPageBinding(),
    ),
    GetPage(
      name: _Paths.NAVBAR_PAGE,
      page: () => NavbarPageView(),
      binding: NavbarPageBinding(),
    ),
  ];
}
