import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class KirimTulisanController extends GetxController {
  TextEditingController cJudul = TextEditingController();
  TextEditingController cIsi = TextEditingController();
  TextEditingController cImg = TextEditingController();

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
