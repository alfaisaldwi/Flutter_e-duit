import 'package:eduit/app/modules/account_info/views/account_info_view.dart';
import 'package:eduit/app/modules/konten_edu/views/konten_edu_view.dart';
import 'package:eduit/app/modules/login_page/views/login_page_view.dart';
import 'package:eduit/app/modules/signup_page/views/signup_page_view.dart';
import 'package:eduit/app/navbottom.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../controllers/account_page_controller.dart';

class AccountPageView extends GetView<AccountPageController> {
  @override
  Widget build(BuildContext context) {
    var p;
    if (FirebaseAuth.instance.currentUser == null) {
      p = LoginPageView();
    } else {
      p = AccountInfoView();
    }
    return p;
  }
}
