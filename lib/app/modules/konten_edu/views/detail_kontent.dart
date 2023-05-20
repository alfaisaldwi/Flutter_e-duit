import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_carousel_slider/flutter_custom_carousel_slider.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/konten_edu_controller.dart';

class DetailKontentView extends GetView<KontenEduController> {
  var konten = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30, top: 80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child: Image.network(
                  konten[0]['imgUrl'],
                  width: 450,
                  height: 230,
                  fit: BoxFit.fill,
                )),
                SizedBox(
                  height: 15,
                ),
                Container(
                  color: Colors.white,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          width: 180,
                          child: Text(
                            '${konten[0]['judul']}',
                            style: GoogleFonts.inter(fontSize: 14),
                            textAlign: TextAlign.left,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.share,
                        size: 28,
                        color: Color(0xff034779),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${konten[0]['penulis']}',
                      style: GoogleFonts.inter(fontSize: 15),
                    ),
                    Wrap(children: [
                      Icon(
                        Icons.date_range,
                        size: 18,
                      ),
                      Text('${konten[0]['tanggal']}',
                          style: GoogleFonts.inter()),
                    ]),
                    Wrap(children: [
                      GestureDetector(
                        onTap: () async {
                          controller.postLike(konten[1]);
                        },
                        child: Icon(
                          Icons.thumb_up_alt_outlined,
                          color: Color(0xff034779),
                          size: 24,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Text(
                          konten[0]['likes'].toString(),
                          style: GoogleFonts.inter(fontSize: 16),
                        ),
                      ),
                    ]),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  color: Colors.white,
                  child: Text(
                    '${konten[0]['isi']}',
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.inter(height: 1.8),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
