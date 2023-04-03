import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:eduit/app/modules/artikel_podcast/controllers/artikel_podcast_controller.dart';
import 'package:eduit/app/modules/artikel_podcast/views/artikel_podcast_view.dart';
import 'package:eduit/app/modules/daftar_ymyb/views/daftar_ymyb_view.dart';
import 'package:eduit/app/modules/kamus_keuangan_page/views/kamus_keuangan_page_view.dart';
import 'package:eduit/app/modules/konsultasi/views/konsultasi_view.dart';
import 'package:eduit/app/modules/login_page/controllers/login_page_controller.dart';
import 'package:eduit/app/navbottom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_carousel_slider/flutter_custom_carousel_slider.dart';

import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../controllers/home_page_controller.dart';

class HomePageView extends GetView<HomePageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: Nammm()
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 14.0, right: 14, top: 20),
            child: Column(
              children: [
                Column(
                  children: [
                    AnimSearchBar(
                      rtl: true,
                      width: 400,
                      helpText: 'Cari..',
                      color: Color(0xffF8C800),
                      textController: controller.tsearch,
                      onSuffixTap: () {
                        controller.tsearch.clear();
                      },
                      onSubmitted: (String) {},
                    ),
                    Container(
                      height: 180,
                      width: double.infinity,
                      //color: Colors.purple,
                      padding: EdgeInsets.all(
                        3,
                      ),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff5EE8D1), width: 3),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Image.asset(
                        'assets/images/home_kuis.png',
                        height: double.infinity,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () async {
                            await PersistentNavBarNavigator
                                .pushNewScreenWithRouteSettings(
                              settings: RouteSettings(
                                  arguments: ArtikelPodcastController),
                              context,
                              screen: ArtikelPodcastView(),
                              withNavBar:
                                  true, // OPTIONAL VALUE. True by default.
                              pageTransitionAnimation:
                                  PageTransitionAnimation.cupertino,
                            );
                          },
                          child: Container(
                            height: 110,
                            width: 175,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xff5EE8D1), width: 3),
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: Image.asset(
                              'assets/images/home_konten.png',
                              height: double.infinity,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () async {
                            await PersistentNavBarNavigator.pushNewScreen(
                              context,
                              screen: KamusKeuanganPageView(),
                              withNavBar:
                                  true, // OPTIONAL VALUE. True by default.
                              pageTransitionAnimation:
                                  PageTransitionAnimation.cupertino,
                            );
                          },
                          child: Container(
                            height: 110,
                            width: 175,
                            //color: Colors.purple,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xff5EE8D1), width: 3),
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: Image.asset(
                              'assets/images/home_kamus.png',
                              height: double.infinity,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () async {
                            await PersistentNavBarNavigator
                                .pushNewScreenWithRouteSettings(
                              settings: RouteSettings(
                                  arguments: ArtikelPodcastController),
                              context,
                              screen: ArtikelPodcastView(),
                              withNavBar:
                                  true, // OPTIONAL VALUE. True by default.
                              pageTransitionAnimation:
                                  PageTransitionAnimation.cupertino,
                            );
                          },
                          child: Container(
                            height: 110,
                            width: 175,
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xff5EE8D1), width: 3),
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: Image.asset(
                              'assets/images/home_utang.png',
                              height: double.infinity,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () async {
                            await PersistentNavBarNavigator.pushNewScreen(
                              context,
                              screen: DaftarYmybView(),
                              withNavBar:
                                  true, // OPTIONAL VALUE. True by default.
                              pageTransitionAnimation:
                                  PageTransitionAnimation.cupertino,
                            );
                          },
                          child: Container(
                            height: 110,
                            width: 175,
                            //color: Colors.purple,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xff5EE8D1), width: 3),
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: Image.asset(
                              'assets/images/home_komunitas.png',
                              height: double.infinity,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () async {
                        await PersistentNavBarNavigator.pushNewScreen(
                          context,
                          screen: KonsultasiView(),
                          withNavBar: true, // OPTIONAL VALUE. True by default.
                          pageTransitionAnimation:
                              PageTransitionAnimation.cupertino,
                        );
                      },
                      child: Container(
                        height: 100,
                        width: double.infinity,
                        //color: Colors.purple,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xff5EE8D1), width: 3),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: Image.asset(
                          'assets/images/home_konsul.png',
                          height: double.infinity,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CustomCarouselSlider(
                      items: controller.itemList,
                      height: 130,
                      subHeight: 50,
                      width: MediaQuery.of(context).size.width * .9,
                      autoplay: true,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
