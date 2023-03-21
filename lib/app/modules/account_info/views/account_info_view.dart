import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/account_info_controller.dart';

class AccountInfoView extends GetView<AccountInfoController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, top: 120),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Halo.',
              style: GoogleFonts.inter(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff034779)),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Tamuu .',
              style: GoogleFonts.inter(fontSize: 30, color: Color(0xff034779)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Kamu tipe investor yang seperti apa?',
                style: GoogleFonts.inter(
                  fontSize: 12,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 5),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Yuk, cek profil risiko kamu dalam berinvestasi!',
                style: GoogleFonts.inter(
                  fontSize: 12,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 120,
            width: double.infinity,
            //color: Colors.purple,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2),
            ),
            child: const Text("Hello! i am inside a container!",
                style: TextStyle(fontSize: 20)),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Card(
                child: Container(
                  width: 167,
                  height: 120,
                  padding: EdgeInsets.all(12),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        'Tulisan Kamu',
                        style: GoogleFonts.inter(
                            fontSize: 16, color: Colors.black45),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Text('5',
                          style: GoogleFonts.inter(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87)),
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  width: 167,
                  height: 120,
                  padding: EdgeInsets.all(12),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        'Poin Kamu',
                        style: GoogleFonts.inter(
                            fontSize: 16, color: Colors.black45),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Text('5',
                          style: GoogleFonts.inter(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87)),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Logout',
                style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
