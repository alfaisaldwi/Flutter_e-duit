import 'package:eduit/app/navbottom.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/kirim_tulisan_controller.dart';

class KirimTulisanView extends GetView<KirimTulisanController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30, top: 50),
            child: Column(children: [
              SizedBox(
                height: 10,
              ),
              Container(
                width: 480,
                //color: Colors.purple,
                padding: EdgeInsets.all(
                  2,
                ),
                alignment: Alignment.center,
                decoration: BoxDecoration(),
                child: Image.asset(
                  'assets/images/tulisan_home.png',
                  fit: BoxFit.cover,
                ),
              ),
              Card(
                child: Container(
                  width: 147,
                  height: 100,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.add_circle_outline_rounded,
                        size: 40,
                        color: Color(0xff034779),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Tambah Tulisan',
                          style: GoogleFonts.inter(
                              fontSize: 14, color: Color(0xff034779))),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
