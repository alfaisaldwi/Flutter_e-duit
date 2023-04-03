import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/konten_edu_controller.dart';

class KontenEduView extends GetView<KontenEduController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KontenEduView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'KontenEduView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
