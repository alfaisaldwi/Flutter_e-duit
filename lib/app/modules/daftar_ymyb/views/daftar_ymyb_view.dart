import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/daftar_ymyb_controller.dart';

class DaftarYmybView extends GetView<DaftarYmybController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'DaftarYmybView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
