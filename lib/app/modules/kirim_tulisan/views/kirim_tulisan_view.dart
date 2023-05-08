import 'package:eduit/app/modules/kirim_tulisan/views/buat_tulisan_view.dart';
import 'package:eduit/app/navbottom.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

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
                child: GestureDetector(
                  onTap: () {
                    PersistentNavBarNavigator.pushNewScreen(
                      context,
                      screen: BuatTulisanView(),
                      withNavBar: true, // OPTIONAL VALUE. True by default.
                      pageTransitionAnimation:
                          PageTransitionAnimation.cupertino,
                    );
                  },
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
                        Text(
                          'Tambah Tulisan',
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            color: Color(0xff034779),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.white,
                width: double.infinity,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Text(
                          'Judul',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            color: Color(0xff656464),
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Text(
                          'Tanggal Update',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            color: Color(0xff656464),
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Text(
                          'Poin',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            color: Color(0xff656464),
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ]),
              ),
              StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection("konten")
                      .snapshots(),
                  builder: (context, snapshot) {
                    return ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      physics: ScrollPhysics(),
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        DocumentSnapshot konten = snapshot.data!.docs[index];
                        if (snapshot.hasError || snapshot.data == null) {
                          return CircularProgressIndicator(); // add this to showcase the error
                        }
                        if (snapshot.hasData) {
                          return Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            color: Colors.white,
                            width: double.infinity,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 100,
                                    child: Text(
                                      '${konten['judul']}',
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.inter(
                                        color: Color(0xff656464),
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 120,
                                    child: Text(
                                      '${konten['tanggal']}',
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.inter(
                                        color: Color(0xff656464),
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 30,
                                    child: Text(
                                      '${konten['poin']}',
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.inter(
                                        color: Color(0xff656464),
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ),
                                ]),
                          );
                        }
                        return CircularProgressIndicator();
                      },
                    );
                  }),
              SizedBox(
                height: 200,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
