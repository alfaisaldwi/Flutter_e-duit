import 'dart:developer';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class LoginPageController extends GetxController {
  // final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  TextEditingController c_email = TextEditingController();
  TextEditingController c_pw = TextEditingController();
    User? user;

  // FirebaseAuth auth = FirebaseAuth.instance;
  // Future<User?> signIn(String email, String password) async {
  //   try {
  //     UserCredential result = await auth.signInWithEmailAndPassword(
  //         email: email, password: password);
  //     User? user = result.user;
  //     return user;
  //   } catch (e) {
  //     log(e.toString());
  //     return null;
  //   }
  // }

  // Stream<User?> get firebaseUserStream => auth.authStateChanges();
  // void asignOutUser() {
  //   auth.signOut();
  // }

 
  
}
  
  
  
  
  //   if (_firebaseAuth.currentUser!.email != null) {
  //     print(_firebaseAuth.currentUser!.email);
  //     Get.to(() => HomeView());
  //   } else {
  //     await _googleSignIn.signIn().then((value) {
  //       String username = value!.displayName!;
  //       String profilePicture = value.photoUrl!;
  //       print('$username');
  //       Get.to(() => HomeView());
  //     });
  //   }
  // }

