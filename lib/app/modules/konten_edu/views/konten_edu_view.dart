import 'package:flutter/material.dart';
import 'package:flutter_custom_carousel_slider/flutter_custom_carousel_slider.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/konten_edu_controller.dart';

class KontenEduView extends GetView<KontenEduController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30, top: 80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomCarouselSlider(
                  items: controller.itemList,
                  height: 200,
                  subHeight: 0,
                  width: MediaQuery.of(context).size.width * .9,
                  autoplay: true,
                ),
                SizedBox(
                  height: 2,
                ),
                Container(
                  height: 120,
                  padding: EdgeInsets.all(5),
                  width: double.infinity,
                  child: Row(children: [
                    Image.asset('assets/images/thumbnail1.png', width: 140),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Kawasan SCBD, Third Place sekaligus Runaway Citayam Fashion Week',
                            textAlign: TextAlign.left,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Admin'),
                              Wrap(children: [
                                Icon(
                                  Icons.date_range,
                                  size: 18,
                                ),
                                Text('09 Maret 2023'),
                              ]),
                            ],
                          )
                        ],
                      ),
                    )
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
