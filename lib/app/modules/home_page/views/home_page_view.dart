import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_carousel_slider/flutter_custom_carousel_slider.dart';

import 'package:get/get.dart';

import '../controllers/home_page_controller.dart';

class HomePageView extends GetView<HomePageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 14.0, right: 14, top: 50),
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
                    height: 200,
                    width: double.infinity,
                    //color: Colors.purple,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 3),
                    ),
                    child: const Text("Hello! i am inside a container!",
                        style: TextStyle(fontSize: 20)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 100,
                        width: 105,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2),
                        ),
                        child: const Text("Hello! i am inside a container!",
                            style: TextStyle(fontSize: 20)),
                      ),
                      Container(
                        height: 100,
                        width: 105,
                        //color: Colors.purple,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2),
                        ),
                        child: const Text("Hello! i am inside a container!",
                            style: TextStyle(fontSize: 20)),
                      ),
                      Container(
                        height: 90,
                        width: 140,
                        //color: Colors.purple,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2),
                        ),
                        child: const Text("Hello! i am inside a container!",
                            style: TextStyle(fontSize: 20)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 100,
                    width: double.infinity,
                    //color: Colors.purple,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 3),
                    ),
                    child: const Text("Hello! i am inside a container!",
                        style: TextStyle(fontSize: 20)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomCarouselSlider(
                    items: controller.itemList,
                    height: 150,
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
    );
  }
}
