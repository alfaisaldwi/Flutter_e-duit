import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/konsultasi_controller.dart';

class KonsultasiView extends GetView<KonsultasiController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 32.0, right: 32, top: 100),
            child: Column(children: [
              Container(
                height: 330,
                width: double.infinity,
                //color: Colors.purple,
                padding: EdgeInsets.all(
                  3,
                ),
                alignment: Alignment.center,
                decoration: BoxDecoration(),
                child: Image.asset(
                  'assets/images/konsul_head.png',
                  height: double.infinity,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
