import 'package:eduit/app/modules/kalkulator_duit/controllers/kalkulator_duit_controller.dart';
import 'package:eduit/app/modules/kalkulator_duit/views/result_kalkulator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class KalkulatorDuitView extends GetView<KalkulatorDuitController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 35.0, right: 35, top: 80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Kalkulator Duit',
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.inter(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff034779)),
                ),
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'assets/images/kalkulator_img.png',
                  width: double.infinity,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/kalkulator_line.png',
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Uang yang kamu punya saat ini',
                          style: GoogleFonts.inter(
                              fontSize: 14, color: Colors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Row(
                            children: [
                              Text(
                                'Rp.',
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.black),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 150,
                                child: TextFormField(
                                  controller: controller.c_utang,
                                  inputFormatters: [
                                    FilteringTextInputFormatter(RegExp("[0-9]"),
                                        allow: true),
                                  ],
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Waktu untuk mengumpulkan uang ini',
                              style: GoogleFonts.inter(
                                  fontSize: 14, color: Colors.black),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Row(
                                children: [
                                  Container(
                                    width: 30,
                                    child: Center(
                                      child: TextFormField(
                                        controller: controller.c_waktu,
                                        inputFormatters: [
                                          FilteringTextInputFormatter(
                                              RegExp("[0-9]"),
                                              allow: true),
                                        ],
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'tahun lagi',
                                    style: GoogleFonts.inter(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Target yang akan di investasikan tiap bulan',
                              style: GoogleFonts.inter(
                                  fontSize: 14, color: Colors.black),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Row(
                                children: [
                                  Text(
                                    'Rp.',
                                    style: GoogleFonts.inter(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: Colors.black),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    width: 150,
                                    child: TextFormField(
                                      controller: controller.c_target,
                                      inputFormatters: [
                                        FilteringTextInputFormatter(
                                            RegExp("[0-9]"),
                                            allow: true),
                                      ],
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Jenis produk investasi',
                              style: GoogleFonts.inter(
                                  fontSize: 14, color: Colors.black),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Row(
                                children: [
                                  Text(
                                    'Rp.',
                                    style: GoogleFonts.inter(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: Colors.black),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    width: 150,
                                    child: TextFormField(
                                      controller: controller.c_jenis,
                                      inputFormatters: [
                                        FilteringTextInputFormatter(
                                            RegExp("[0-9]"),
                                            allow: true),
                                      ],
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Perkiraan keuntungan yang kamu inginkan',
                              style: GoogleFonts.inter(
                                  fontSize: 14, color: Colors.black),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Row(
                                children: [
                                  Container(
                                    width: 40,
                                    child: TextFormField(
                                      inputFormatters: [
                                        FilteringTextInputFormatter(
                                            RegExp("[0-9]"),
                                            allow: true),
                                      ],
                                      controller: controller.c_perkiraan,
                                      keyboardType:
                                          TextInputType.numberWithOptions(
                                              decimal: false),
                                      decoration: InputDecoration(),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '% pertahun',
                                    style: GoogleFonts.inter(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Text(
                        'Kira-kira berapa ya keuntungan yang kamu',
                        style: GoogleFonts.inter(
                            color: Color(0xff989393), fontSize: 14),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'peroleh dari hasil investasi?',
                        style: GoogleFonts.inter(
                            color: Color(0xff989393), fontSize: 14),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    width: 170,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffF8C800),
                          shape: StadiumBorder()),
                      child: Text(
                        'Lihat Hasilnya',
                        style: GoogleFonts.inter(
                            fontSize: 12, color: Colors.black),
                      ),
                      onPressed: () async {
                        if (controller.c_utang.text.isNotEmpty &&
                            controller.c_waktu.text.isNotEmpty &&
                            controller.c_target.text.isNotEmpty &&
                            controller.c_perkiraan.text.isNotEmpty &&
                            controller.c_jenis.text.isNotEmpty) {
                          var parseUtang =
                              int.tryParse(controller.c_utang.text);
                          String utang =
                              NumberFormat.decimalPattern().format(parseUtang);
                          var parseWaktu =
                              int.tryParse(controller.c_waktu.text);
                          String waktu =
                              NumberFormat.decimalPattern().format(parseWaktu);
                          var parseTarget =
                              int.tryParse(controller.c_target.text);
                          String target =
                              NumberFormat.decimalPattern().format(parseTarget);
                          var parsePerkiraan =
                              int.tryParse(controller.c_perkiraan.text);
                          String perkiraan = NumberFormat.decimalPattern()
                              .format(parsePerkiraan);

                          Get.to(() => ResultKalkulatorView(),
                              arguments: [utang, waktu, target, perkiraan]);
                        } else {
                          Fluttertoast.showToast(
                            msg: 'Tolong isi semua kolomnya',
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            backgroundColor: Colors.grey[800],
                            textColor: Colors.white,
                            fontSize: 14.0,
                          );
                        }
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
