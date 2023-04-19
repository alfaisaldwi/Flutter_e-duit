import 'package:eduit/app/modules/game_quiz/controllers/game_quiz_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultQuizView extends GetView<GameQuizController> {
  @override
  Widget build(BuildContext context) {
    String? img;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 32.0, right: 32, top: 50),
            child: Column(children: [
              StreamBuilder(
                stream: controller.streamUser(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  Map<String, dynamic> dataResult = snapshot.data!.data()!;
                  if (dataResult['nilai'] == 'Konservatif') {
                    img = 'assets/images/konservatif_logo.png';
                    return Container(
                      height: 340,
                      width: 350,
                      //color: Colors.purple,
                      padding: EdgeInsets.all(
                        12,
                      ),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(),
                      child: Image.asset(
                        img!,
                        height: double.infinity,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    );
                  } else if (dataResult['nilai'] == 'Moderat') {
                    img = 'assets/images/moderat_logo.png';
                    return Container(
                      height: 340,
                      width: 350,
                      //color: Colors.purple,
                      padding: EdgeInsets.all(
                        12,
                      ),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(),
                      child: Image.asset(
                        img!,
                        height: double.infinity,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    );
                  } else {
                    img = 'assets/images/agresif_logo.png';
                    return Container(
                      height: 340,
                      width: 350,
                      //color: Colors.purple,
                      padding: EdgeInsets.all(
                        12,
                      ),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(),
                      child: Image.asset(
                        img!,
                        height: double.infinity,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    );
                  }
                },
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Kamu adalah investor',
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.inter(fontSize: 16),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Text(
                    'konservatif',
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.inter(
                        fontSize: 32,
                        letterSpacing: 4,
                        color: Color(0xff034779),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Card(
                elevation: 05,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Menghindari risiko dalam berinvestasi adalah salah satu hal yang menjadi fokus kamu sebagai investor konservatif saat memilih produk investasi.',
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.inter(fontSize: 14),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Kamu bisa memilih deposito, properti, emas, SBN Ritel, Reksadana Pendapatan Tetap dan Reksadana Pasar Uang. ',
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.inter(fontSize: 14),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Sebab produk tersebut memiliki nilai kenaikan yang cenderung stabil, tidak fluktuatif (berubah-ubah), namun terjamin keamanannya.  ',
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.inter(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: 170,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff5EE8D1),
                        shape: StadiumBorder()),
                    child: Text(
                      'Belajar tentang utang',
                      style:
                          GoogleFonts.inter(fontSize: 12, color: Colors.white),
                    ),
                    onPressed: () async {}
                    // await PersistentNavBarNavigator.pushNewScreen(
                    //   context,
                    //   screen: UtangBelajarView(),
                    //   withNavBar: true, // OPTIONAL VALUE. True by default.
                    //   pageTransitionAnimation: PageTransitionAnimation.fade,

                    ),
              ),
              SizedBox(
                height: 7,
              ),
              SizedBox(
                height: 50,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
