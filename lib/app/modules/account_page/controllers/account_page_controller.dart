import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountPageController extends GetxController {
  //TODO: Implement AccountPageController

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  TextEditingController c_email = TextEditingController();
  TextEditingController c_pw = TextEditingController();
  final count = 0.obs;

  FirebaseAuth auth = FirebaseAuth.instance;
  Future<User?> signIn(String email, String password) async {
    try {
      UserCredential result = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      return user;
    } catch (e) {
      log(e.toString());
      return null;
    }
  }

  Stream<User?> get firebaseUserStream => auth.authStateChanges();
  void asignOutUser() {
    auth.signOut();
  }

   
}
