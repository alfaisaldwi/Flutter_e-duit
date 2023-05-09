import 'dart:io';

import 'package:eduit/app/modules/kirim_tulisan/controllers/kirim_tulisan_controller.dart';
import 'package:eduit/app/modules/navbar_page/views/navbar_page_view.dart';
import 'package:eduit/app/navbottom.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class BuatTulisanView extends GetView<KirimTulisanController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 12.0, right: 12.0),
          child: Column(children: [
            Container(
              padding:
                  EdgeInsets.only(top: 85, left: 40, right: 50, bottom: 20),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Buat Tulisan',
                      style: GoogleFonts.inter(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff034779)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Judul',
                  style: GoogleFonts.inter(fontSize: 12),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                controller: controller.cJudul,
                decoration: InputDecoration(
                  focusColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(26.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Isi',
                  style: GoogleFonts.inter(fontSize: 12),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                controller: controller.cIsi,
                decoration: InputDecoration(
                  focusColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff5EE8D1),
                    ),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
            ),
            Container(
              width: 300,
              child: ElevatedButton(
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.cyan[400]),
                child: Text(
                  'Add Image ',
                  style: TextStyle(
                      fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
                ),
                onPressed: () async {
                  ImagePicker imagePicker = ImagePicker();
                  XFile? file =
                      await imagePicker.pickImage(source: ImageSource.gallery);
                  print('${file?.path}');

                  if (file == null) return;

                  String uniqueFileName =
                      DateTime.now().microsecondsSinceEpoch.toString();
                  Reference referenceRoot = FirebaseStorage.instance.ref();
                  Reference referenceDirImage = referenceRoot.child('images');

                  Reference referenceImagetoUpload =
                      referenceDirImage.child(uniqueFileName);

                  referenceImagetoUpload.putFile(File(file.path));

                  try {
                    await referenceImagetoUpload.putFile(File(file.path));

                    controller.cImg.text =
                        await referenceImagetoUpload.getDownloadURL();
                    print(controller.cImg.text);
                  } catch (e) {}
                },
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                width: 160,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffF8C800),
                        shape: StadiumBorder()),
                    child: Text(
                      'Kirim Tulisan',
                      style:
                          GoogleFonts.inter(fontSize: 12, color: Colors.black),
                    ),
                    onPressed: () async {
                      if (controller.cJudul.text.isEmpty ||
                          controller.cIsi.text.isEmpty) {
                        print(controller.name);
                        print(controller.dateToday.toString().substring(0, 10));

                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  title: Text('Gagal !'),
                                  content:
                                      Text('Tolong isi semua fieldnya ya..'),
                                  actions: <Widget>[
                                    ElevatedButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                          controller.cImg.text = '';
                                        },
                                        child: Text('Ok'))
                                  ],
                                ));
                      } else if (controller.cImg.text == '' ||
                          controller.cImg.text.isEmpty) {
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  title: Text('Gagal !'),
                                  content:
                                      Text('Upload Foto / Sedang Upload Foto'),
                                  actions: <Widget>[
                                    ElevatedButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                          controller.cImg.text = '';
                                        },
                                        child: Text('Ok'))
                                  ],
                                ));
                      } else {
                        print('=====================${controller.name}');
                        controller.postTulisan();
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  title: Text('Berhasil'),
                                  content: Text(
                                      'Silahkan lihat artikel kamu dihalaman Artikel'),
                                  actions: <Widget>[
                                    ElevatedButton(
                                        onPressed: () {
                                          controller.cIsi.clear();
                                          controller.cJudul.clear();
                                          controller.cImg.text = '';
                                          Get.to(() => NavbarPageView());
                                        },
                                        child: Text('Ok'))
                                  ],
                                ));
                      }
                    })),
            SizedBox(
              height: 40,
            ),
          ]),
        ),
      ),
    );
  }
}
