import 'package:eduit/app/data/quiz_list.dart';
import 'package:eduit/app/modules/home_page/views/home_page_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../controllers/game_quiz_controller.dart';

class GameQuizView extends GetView<GameQuizController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(
      () => SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.only(left: 30.0, right: 30, top: 100),
            child: Column(
              children: [
                Text(
                  '${quizData[controller.indexAnswerNow.value].pertanyaan}',
                  style: GoogleFonts.inter(
                      fontSize: 22, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 30,
                ),
                MediaQuery.removePadding(
                  removeTop: true,
                  context: Get.context!,
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Column(
                          children: [
                            Obx(
                              () => GestureDetector(
                                onTap: () {
                                  // controller.changeIndexAnswerNow(index);
                                  controller.isAnswer([
                                    controller.indexAnswerNow.value,
                                    quizData[controller.indexAnswerNow.value]
                                        .pilihan[index]
                                  ]);
                                  print(controller.isAnswer);
                                },
                                child: Container(
                                  height: 70,
                                  width: double.infinity,
                                  padding: EdgeInsets.all(
                                    3,
                                  ),
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                    color: controller.isAnswer.contains(
                                            quizData[controller
                                                    .indexAnswerNow.value]
                                                .pilihan[index])
                                        ? Color(0xffF8C800)
                                        : Colors.white,
                                    border: Border.all(
                                        color: Color(0xff5EE8D1), width: 3),
                                    borderRadius: BorderRadius.circular(14.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(quizData[
                                            controller.indexAnswerNow.value]
                                        .pilihan[index]),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    print(controller.userAnswer);
                    // print(quizData[controller.indexAnswerNow.value].);
                    if (controller.indexAnswerNow.value >= 4) {
                      Future.delayed(
                        const Duration(seconds: 1),
                        () => Get.defaultDialog(
                            barrierDismissible: false,
                            radius: 25,
                            backgroundColor: Colors.white,
                            title: 'Konfirmasi',
                            titleStyle: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            middleText: 'Yakin untuk menyelesaikan quiz?',
                            middleTextStyle:
                                const TextStyle(color: Colors.black),
                            actions: [
                              ElevatedButton(
                                onPressed: () {
                                  Get.back();
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.red),
                                child: const Text(
                                  'batal',
                                ),
                              ),
                              const SizedBox(
                                width: 46,
                              ),
                              ElevatedButton(
                                onPressed: () async {
                                  Get.back();
                                  await controller.submitAnswer();
                                  //         PersistentNavBarNavigator.pushNewScreen(
                                  //   context,
                                  //   screen: HomePageView(),
                                  //   withNavBar:
                                  //       true, // OPTIONAL VALUE. True by default.
                                  //   pageTransitionAnimation:
                                  //       PageTransitionAnimation.cupertino,
                                  // );
                                  print(controller.isAnswer);
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.green),
                                child: const Text(
                                  'Yakin',
                                ),
                              ),
                            ]),
                      );
                    } else {
                      controller.changeIndexAnswerNow(
                          controller.indexAnswerNow.value + 1);
                      controller.userAnswer.add(controller.isAnswer.value);

                      print(controller.userAnswer);
                    }
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 60,
                    ),
                    alignment: Alignment.centerRight,
                    margin: const EdgeInsets.symmetric(
                      vertical: 5,
                    ),
                    height: 40,
                    width: 320,
                    decoration: BoxDecoration(
                        color: quizData[controller.indexAnswerNow.value]
                                    .pertanyaan!
                                    .length ==
                                controller.indexAnswerNow.value - 1
                            ? Colors.green
                            : const Color(0xff106FA4),
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Text(
                        controller.indexAnswerNow.value >= 4
                            ? "Selesai"
                            : "Next",
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            color: quizData[controller.indexAnswerNow.value]
                                            .pertanyaan!
                                            .length -
                                        1 ==
                                    controller.indexAnswerNow.value
                                ? Colors.white
                                : Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                GestureDetector(
                  onTap: () {
                    if (controller.indexAnswerNow.value != 0) {
                      controller.changeIndexAnswerNow(
                          controller.indexAnswerNow.value - 1);
                    }
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 60),
                    alignment: Alignment.centerRight,
                    margin: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    height: 40,
                    width: 320,
                    decoration: BoxDecoration(
                        color: const Color(0xffE5E5E5),
                        borderRadius: BorderRadius.circular(15)),
                    child: const Center(
                      child: Text(
                        'Kembali',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
