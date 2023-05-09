import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class KirimTulisanController extends GetxController {
  TextEditingController cJudul = TextEditingController();
  TextEditingController cIsi = TextEditingController();
  TextEditingController cImg = TextEditingController();
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  final CollectionReference dbF =
      FirebaseFirestore.instance.collection('konten');
  final auth = FirebaseAuth.instance.currentUser!.displayName;
  var name = '';

  DateTime dateToday =
      DateTime(DateTime.now().day, DateTime.now().month, DateTime.now().year);

  Stream qSnapShot =
      FirebaseFirestore.instance.collection('konten').snapshots();

  @override
  void onInit() {
    super.onInit();
    FirebaseFirestore.instance
        .collection("profile")
        .where("uid", isEqualTo: FirebaseAuth.instance.currentUser!.uid)
        .snapshots()
        .listen((data) {
      data.docs.forEach((doc) {
        name = doc.data()['username'];
      });
    });
  }

  postTulisan() async {
    final String judul = cJudul.text;
    final String isi = cJudul.text;
    final String img = cImg.text;

    if (judul.isNotEmpty && isi.isNotEmpty && img.isNotEmpty) {
      await dbF.add({
        "penulis": name,
        "judul": judul,
        "isi": isi,
        "imgUrl": img,
        "tanggal": dateToday.toString().substring(0, 10),
        "poin": 10
      });
    }
  }
}
