import 'package:eduit/app/modules/kalkulator_duit/controllers/kalkulator_duit_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultKalkulatorView extends GetView<KalkulatorDuitController> {
  @override
  Widget build(BuildContext context) {
    var data = Get.arguments;
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 32.0, right: 32, top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                child: Image.asset(
                  'assets/images/kalkulator_result_img.png',
                  width: double.infinity,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xff5EE8D1),
                    borderRadius: BorderRadius.all(Radius.circular(6))),
                width: 320,
                height: 70,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Text(
                        'Berikut deskripsi dari hasil investasimu di ',
                        style: GoogleFonts.inter(
                            fontSize: 14, color: Colors.white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Reksadana Campuran ',
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 30.0,
                  left: 40,
                  right: 40,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Uang kamu saat ini',
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Rp. ${data[0]}',
                      style:
                          GoogleFonts.inter(fontSize: 15, color: Colors.black),
                    ),
                    Text(
                      'Lama Investasi',
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      ' ${data[1]} Tahun',
                      style:
                          GoogleFonts.inter(fontSize: 15, color: Colors.black),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Uang yang diinvestasikan pertahun',
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Rp. ${data[2] ?? 0} ',
                      style:
                          GoogleFonts.inter(fontSize: 15, color: Colors.black),
                    ),
                    Text(
                      'Uang kamu saat ini',
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Rp. ${data[3]}',
                      style:
                          GoogleFonts.inter(fontSize: 15, color: Colors.black),
                    ),
                    Text(
                      'Uang kamu saat ini',
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Rp. ${data[0]}',
                      style:
                          GoogleFonts.inter(fontSize: 15, color: Colors.black),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
