import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/kirim_tulisan_controller.dart';

class KirimTulisanView extends GetView<KirimTulisanController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KirimTulisanView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'KirimTulisanView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
