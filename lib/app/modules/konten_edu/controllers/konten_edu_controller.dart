import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_carousel_slider/flutter_custom_carousel_slider.dart';
import 'package:get/get.dart';

class KontenEduController extends GetxController {
  final CollectionReference dbKonten =
      FirebaseFirestore.instance.collection('konten');
  final CollectionReference dbProfile =
      FirebaseFirestore.instance.collection('profile');
  Stream qSnapShot =
      FirebaseFirestore.instance.collection('konten').snapshots();
  var uid = FirebaseAuth.instance.currentUser!.uid;
  var liked = [];
  List<CarouselItem> itemList = [
    CarouselItem(
      image: AssetImage('assets/images/thumbnail1.png'),
      boxDecoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset.bottomCenter,
          end: FractionalOffset.topCenter,
          colors: [
            Colors.blueAccent.withOpacity(1),
            Colors.black.withOpacity(.3),
          ],
          stops: const [0.0, 1.0],
        ),
      ),
      title:
          'Push your creativity to its limits by reimagining this classic puzzle!',
      titleTextStyle: const TextStyle(
        fontSize: 12,
        color: Colors.white,
      ),
      onImageTap: (i) {},
    ),
    CarouselItem(
      image: AssetImage('assets/images/thumbnail2.png'),
      title: '@coskuncay published flutter_custom_carousel_slider!',
      titleTextStyle: const TextStyle(
        fontSize: 12,
        color: Colors.white,
      ),
      onImageTap: (i) {},
    ),
    CarouselItem(
      image: AssetImage('assets/images/thumbnail3.png'),
      title: '@coskuncay published flutter_custom_carousel_slider!',
      titleTextStyle: const TextStyle(
        fontSize: 12,
        color: Colors.white,
      ),
      onImageTap: (i) {},
    )
  ];
  @override
  void onInit() {
    super.onInit();
    FirebaseFirestore.instance
        .collection("profile")
        .where("uid", isEqualTo: FirebaseAuth.instance.currentUser!.uid)
        .snapshots()
        .listen((data) {
      data.docs.forEach((doc) {
        liked = doc.data()['listliked'];
      });
      print('---------------$liked');
    });
  }

  void postLike(String docId) async {
    // final querySnapshot = await dbKonten.get();
    // final documents = querySnapshot.docs;

    // for (var document in documents) {
    //   final idDokumen = document.id;
    //   print('ID Dokumen: $idDokumen');
    // }

    if (liked.contains(docId)) {
      print('cancel');
    } else {
      var q = liked.toList();
      var w = liked.add(docId);

      var epd = liked.expand((jawab) => jawab).toList();
      await dbKonten.doc(docId).update({"likes": FieldValue.increment(1)});
      dbProfile.doc(uid).update({
        "listliked": [docId]
      });
      dbProfile.doc(uid).update({"poin": FieldValue.increment(5)});
      print("masuk, $epd");
      print([w]);
    }
    print(liked);
  }
}
